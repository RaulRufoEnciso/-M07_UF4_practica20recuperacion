from django.urls import path
from . import views

urlpatterns = [
    path('historial-compras/', views.historial_compras, name='historial_compras'),
]
