from django.shortcuts import render,redirect
from .models import Teacher,ClassListing
from django.contrib import messages, auth
from django.contrib.auth.models import User
# Create your views here.



def teacherauthload(request):
    queryset_list = Teacher.objects.order_by('-hire_date')
    for ele in queryset_list:
        username_ite = ele.username
        password_ite = ele.password
        name_ite = ele.name
        email_ite=ele.email
        phone_ite= ele.phone
        if User.objects.filter(username=username_ite).exists():
            print("passed.. ",username_ite)
            pass
        else:
            print(username_ite)
            user = User.objects.create_user(username=username_ite,
                                            password=password_ite,
                                            first_name=name_ite,
                                            email=email_ite)
            user.save()
    return redirect('teacherlogin')

    
def teacherlogin(request):
    queryset_list = Teacher.objects.order_by('-hire_date')
    for ele in queryset_list:
        username_ite = ele.username
        if User.objects.filter(username=username_ite).exists():
            pass
        else:
            print(username_ite+"saved to User database")
            user = User.objects.create_user(username=username_ite,
                                            password=ele.password,
                                            first_name=ele.name,
                                            email=ele.email,
                                            is_staff=True)
            user.save()    
    if request.method == 'POST':
        username_input = request.POST['username']
        password_input = request.POST['password']
        queryset_list = Teacher.objects.order_by('-hire_date')
        
        user = auth.authenticate(username=username_input, password=password_input, is_staff=True)
        if user is not None:
            if user.is_staff == True and user.is_superuser == False:
                auth.login(request, user)
                messages.success(request, 'You are now logged in')
                return redirect('teacherdashboard')
            else:
                messages.error(request, 'Please login with Teacher Credentials')
                return redirect('teacherlogin')
        else:
            messages.error(request, 'Invalid Teacher credentials')
            return redirect('teacherlogin')
            
                
    return render(request, 'teacher/teacherlogin.html')



def teacherdashboard(request):
    class_listings = ClassListing.objects.order_by('-id')

    context = {
        'listings': class_listings
    }

    if request.method == 'POST':
        classname_tdsh = request.POST['classname']
        topics_tdsh = request.POST['topics']
        description_tdsh = request.POST['description']
        teachername_tdsh = request.POST['teachername']
        teacher_data = Teacher.objects.get(username=teachername_tdsh)
        if teacher_data:
            ClassListing.objects.create(classname=classname_tdsh,
                                        topics=topics_tdsh,
                                        description=description_tdsh,
                                        teacherid=teacher_data)
            print("Post Created by ",teachername_tdsh)
            messages.success(request, 'Class Listing Created Successfully')
        else:
            messages.error(request, 'Cannot get Teacher Details')
    return render(request, 'teacher/teacherdashboard.html',context=context)

def logout(request):
    auth.logout(request)
    messages.success(request, 'You are now logged out')
    return redirect('index')