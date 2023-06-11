from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Comanda
from .serializer import comandasSerializer

@api_view(['GET'])
def historial_compras(request):
    historial = Comanda.objects.filter(comprado=True)
    serializer = comandasSerializer(historial, many=True)
    return Response(serializer.data)
# Muestra todas las compras efectuadas
