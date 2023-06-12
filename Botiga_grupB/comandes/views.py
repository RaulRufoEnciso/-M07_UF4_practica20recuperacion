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
        historial_com = []

        for item in historial:
            numero_aleatorio = random.randint(0, 99)
            id_aleatorio = random.randint(0, 99999)

            comandes_obj = Comanda(historial_comandes=numero_aleatorio, state=item.comprado, idCarrito=item)

            # Verificar si la instancia de Comanda ya existe en historial_com
            if comandes_obj not in historial_com:
                comandes_obj.id = id_aleatorio
                comandes_obj.save()
                historial_com.append(comandes_obj)

        serializer = comandasSerializer(historial_com, many=True)
        return Response(serializer.data)

        # Si no hay objetos con comprado=True, devuelve una respuesta vacía
    return Response(status=204)
@api_view(['DELETE'])
def delete_carrito(request, pk):
    try:
        comanda= Comanda.objects.get(id=pk)
        comanda.delete()
        return Response({"message": "Carrito eliminado correctamente"})
    except Carrito.DoesNotExist:
        return Response({"error": "Carrito no encontrado"}, status=404)

@api_view(['GET'])
def carritos_no_finalizados(request):
    if Carrito.objects.filter(comprado=False).exists():
        historial = Carrito.objects.filter(comprado=False)
        historial_com = []

        for item in historial:
            numero_aleatorio = random.randint(0, 99)
            id_aleatorio = random.randint(0, 99999)

            comandes_obj = Comanda(historial_comandes=numero_aleatorio, state=item.comprado, idCarrito=item)

            # Verificar si la instancia de Comanda ya existe en historial_com
            if comandes_obj not in historial_com:
                comandes_obj.id = id_aleatorio
                comandes_obj.save()
                historial_com.append(comandes_obj)

        serializer = comandasSerializer(historial_com, many=True)
        return Response(serializer.data)

        # Si no hay objetos con comprado=True, devuelve una respuesta vacía
    return Response(status=204)
