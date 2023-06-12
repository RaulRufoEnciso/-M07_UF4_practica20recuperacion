from django.db import models
from carreto.models import Carrito


class Comanda(models.Model):
    historial_comandes = models.CharField(max_length=30)
    state = models.BooleanField()
    idCarrito = models.ForeignKey(Carrito, on_delete=models.CASCADE)