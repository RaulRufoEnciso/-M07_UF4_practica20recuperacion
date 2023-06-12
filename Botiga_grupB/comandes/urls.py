from django.urls import path
from . import views

urlpatterns = [
    path('historial-compras/', views.historial_compras, name='historial_compras'),
    path('carritos-no-finalizados/', views.carritos_no_finalizados, name='carritos_no_finalizados'),
    path('eliminar-carrito/<int:pk>/', views.delete_carrito, name='eliminar_carrito'),
]
