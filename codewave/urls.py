from django.contrib import admin
from django.urls import path,include

urlpatterns = [
    
    path('', include('student_profiles.urls')),
    path('teacher/', include('teachers.urls')),
    path('admin/', admin.site.urls),
]
