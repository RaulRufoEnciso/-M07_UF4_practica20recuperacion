from django.urls import path
from . import views
from carreto.views import deleteProductoInCarritoById

urlpatterns = [
    path('historial-compras/', views.historial_compras, name='historial_compras'),
    path('carritos-no-finalizados/', views.carritos_no_finalizados, name='carritos_no_finalizados'),
    path('eliminar-carrito/<int:pk>/', deleteProductoInCarritoById, name='eliminar_carrito'),
]
