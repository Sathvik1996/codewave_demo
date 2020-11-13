from django.contrib import admin

from .models import Teacher,ClassListing

# Register your models here.

class TeacherAdmin(admin.ModelAdmin):
  list_display = ('id', 'name', 'email', 'hire_date')
  list_display_links = ('id', 'name')
  search_fields = ('name',)
  list_per_page = 25

admin.site.register(Teacher, TeacherAdmin)



