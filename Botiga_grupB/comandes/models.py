from django.db import models
from carreto.models import Carrito


class Comanda(models.Model):
    estat_choices = (
        ('pending', 'Pendiente'),
        ('sold', 'Pagado'),
    )
    historial_comandes = models.CharField(max_length=30)
    state = models.CharField(max_length=20, choices=estat_choices, default='pending')
    idCarrito = models.ForeignKey(Carrito, on_delete=models.CASCADE)