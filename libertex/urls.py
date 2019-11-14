from django.contrib import admin
from django.urls import path

from core.views import EmployeesList, BranchesList

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/employees/", EmployeesList.as_view()),
    path("api/branches/", BranchesList.as_view()),
]
