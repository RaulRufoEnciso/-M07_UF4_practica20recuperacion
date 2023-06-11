from django.shortcuts import render, redirect
from django.contrib import messages
from .models import Compra
from datetime import datetime
import re

def numero_tarjeta_valido(numero_tarjeta):
    # verificamos que el número de tarjeta tenga 16 dígitos y sea numérico
    if re.match(r'^\d{16}$', numero_tarjeta):
        return True
    return False

from datetime import datetime

def fecha_caducidad_valida(fecha_caducidad):
    # verificamos que la fecha de caducidad esté en el formato MM/YY y sea válida
    try:
        fecha_caducidad = datetime.strptime(fecha_caducidad, '%m/%y')
        fecha_caducidad = fecha_caducidad.strftime('%Y-%m-%d')  # Convertir a formato YYYY-MM-DD
        # Verificar que la fecha de caducidad sea mayor a la fecha actual como el formato real
        if fecha_caducidad > datetime.now().strftime('%Y-%m-%d'):
            return True
    except ValueError:
        pass
    return False


def cvc_valido(cvc):
    # Verificar que el CVC tenga 3 dígitos y sea numérico
    if re.match(r'^\d{3}$', cvc):
        return True
    return False





def pagar(request):
    if request.method == 'POST':
        numero_tarjeta = request.POST.get('numero_tarjeta')
        fecha_caducidad = request.POST.get('fecha_caducidad')
        cvc = request.POST.get('cvc')

        #compobamos los datos de la tarjeta y realizar el pago simulado
        if numero_tarjeta_valido(numero_tarjeta) and fecha_caducidad_valida(fecha_caducidad) and cvc_valido(cvc):
            
            # Los datos de la tarjeta son válidos, realizar el pago y guardar la compra en el historial
            compra = Compra(numero_tarjeta=numero_tarjeta, fecha_caducidad=fecha_caducidad, cvc=cvc)
            compra.save()

         
            messages.success(request, '¡Compra realizada!')
            return redirect('historial_compras')  
        else:
           
            messages.error(request, 'Los datos de la tarjeta no son válidos. Inténtalo de nuevo.')

    return render(request, 'payment.html')
