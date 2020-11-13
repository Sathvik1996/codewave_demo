from django.urls import path
from . import views

urlpatterns = [
    path('teacherlogin', views.teacherlogin, name='teacherlogin'),
    path('teacherdashboard', views.teacherdashboard, name='teacherdashboard'),
    path('teacherauthload', views.teacherauthload, name='teacherauthload'),
    path('logout', views.logout, name='logout'),
]



