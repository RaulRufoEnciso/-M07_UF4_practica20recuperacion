from django.db import models



class Comanda(models.Model):
    estat_choices = (
        ('pending', 'Pendiente'),
        ('sold', 'Pagado'),
    )
    historial_comandes = models.CharField(max_length=30)
    state = models.CharField(max_length=20, choices=estat_choices, default='pending')