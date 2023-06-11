from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import Productos
from .serializers import ProductosSerializer


@api_view(['POST'])
def addProducto(request):
    serializer = ProductosSerializer(data=request.data, many=False)

    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)

# Crear los productos en la tabla del carrito
