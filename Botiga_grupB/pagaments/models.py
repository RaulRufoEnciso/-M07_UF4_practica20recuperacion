from django.db import models

class Compra(models.Model):
    numero_tarjeta = models.CharField(max_length=16)
    fecha_caducidad = models.CharField(max_length=5)
    cvc = models.CharField(max_length=3)
    fecha_compra = models.DateTimeField(auto_now_add=True)

 