from django.urls import path
from . import views

#Rutas del cataleg
urlpatterns = [
    path('add-producto/', views.addProducto, name="add-producto"),
    path('update-producto/<str:pk>/', views.updateProducto, name="update-producto"),
   

]