from django.shortcuts import render
from django.shortcuts import render, redirect
from django.contrib import messages, auth
from django.contrib.auth.models import User
from teachers.models import ClassListing, Teacher
from .models import Student
from django.core.mail import send_mail
from django.conf import settings


def register(request):
    if request.method == 'POST':
        # Get form values
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        password2 = request.POST['password2']

        # Check if passwords match
        if password == password2:
            # Check username
            if User.objects.filter(username=username).exists():
                messages.error(request, 'That username is taken')
                return redirect('register')
            else:
                if User.objects.filter(email=email).exists():
                    messages.error(request, 'That email is being used')
                    return redirect('register')
                else:
                    user = User.objects.create_user(username=username, password=password, email=email,
                                                    first_name=first_name, last_name=last_name)

                    subject = '[Test] - Welcome to CodeWave world'
                    message = f'Hi {username}, thank you for registering in CodeWave Test.'
                    email_from = settings.EMAIL_HOST_USER
                    recipient_list = [email,'vsathvik1996@gmail.com']
                    send_mail(subject, message, email_from, recipient_list)
                    user.save()
                    messages.success(request, 'You are now registered and can log in')
                    return redirect('login')
        else:
            messages.error(request, 'Passwords do not match')
            return redirect('register')
    else:
        return render(request, 'accounts/register.html')


def login(request):
    username = request.user.username
    if username:
        if request.user.is_superuser:
            return redirect('logout')

        if request.user.is_staff:
            return redirect('teacherdashboard')
        else:
            return redirect('dashboard')

    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        print(username, password)
        user = auth.authenticate(username=username, password=password)
        if user is not None:
            if user.is_staff == False:
                auth.login(request, user)
                messages.success(request, 'You are now logged in')
                return redirect('dashboard')
            else:
                messages.error(request, 'Please login as student')
                return redirect('login')
        else:
            messages.error(request, 'Invalid credentials')
            return redirect('login')
    else:
        return render(request, 'accounts/login.html')


def index(request):
    username = request.user.username
    if username:
        if request.user.is_superuser == True:
            return redirect('logout')
        if request.user.is_staff == True:
            return redirect('teacherdashboard')
        else:
            return redirect('dashboard')

    teachers = Teacher.objects.order_by('-id')
    class_listings = ClassListing.objects.order_by('-id')
    context = {
        'teachers': teachers,
        'listings': class_listings
    }



    return render(request,'pages/index.html',context=context)


def dashboard(request):
    username_logged = request.user.username
    class_listings = ClassListing.objects.order_by('-id')
    Enrolled_listings = Student.objects.order_by('-id')
    Enrolled_listings = Enrolled_listings.filter(username=username_logged)
    context = {
        'listings': class_listings,
        'enrollments': Enrolled_listings
    }
    return render(request, 'accounts/dashboard.html', context=context)


def classlisting_save(request, classlisting_save_id):
    username = request.user.username
    if username:
        teacher_data = ClassListing.objects.get(id=classlisting_save_id)
        dup_check = Student.objects.filter(username=username, student_listing_id=teacher_data)
        if dup_check:
            messages.error(request, 'Class Already Enrolled')
        else:
            Student.objects.create(username=username, student_listing_id=teacher_data)
        return redirect('dashboard')
    else:
        return redirect('login')


def classlisting_delete(request, classlisting_delete_id):
    username = request.user.username
    teacher_data = ClassListing.objects.get(id=classlisting_delete_id)
    delete_check = Student.objects.filter(username=username, student_listing_id=teacher_data)
    if delete_check:
        delete_check.delete()
        messages.success(request, 'Post Deleted Successfully')
        return redirect('dashboard')
    else:
        messages.error(request, 'Post Doesn"t Exist')
        return redirect('dashboard')
    return redirect('dashboard')




def classlisting_detail(request, classlisting_detail_id):
    teacher_data = ClassListing.objects.get(id=classlisting_detail_id)

    context ={
      "listings" : teacher_data
    }
    if teacher_data:
      return render(request, 'pages/classdetail.html', context=context)
    else:
      return redirect('logout')


