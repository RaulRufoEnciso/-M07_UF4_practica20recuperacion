from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Comanda
from .serializer import comandasSerializer
from carreto.models import Carrito
import random


@api_view(['GET'])
def historial_compras(request):
    if Carrito.objects.filter(comprado=True).exists():
        historial = Carrito.objects.filter(comprado=True)

        for item in historial:
            numero_aleatorio = random.randint(0, 99)
            comandes_obj = Comanda(historial_comandes=numero_aleatorio, state=item.comprado, idCarrito=item.id)
            comandes_obj.save()

            historial_com = Comanda.objects.all()
            serializer = comandasSerializer(historial_com, many=True)
            return Response(serializer.data)

            # Si no hay objetos con comprado=True, devuelve una respuesta vacía
        return Response(status=204)
# Muestra todas las compras efectuadas

@api_view(['GET'])
def carritos_no_finalizados(request):
   carritos = Comanda.objects.filter(comprado=False)
   serializer = comandasSerializer(carritos, many=True)
   return Response(serializer.data)
# Mustra los carritos que todavia no estan vendidos
