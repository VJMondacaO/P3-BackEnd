"""
URL configuration for proyectoVerduleriaVictorMondaca project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from djangoVerVictorMondaca.views import (home, productosData, crearProducto, editarProducto, eliminarProducto,
                                         clientesData, crearCliente, editarCliente, eliminarCliente)

urlpatterns = [
    path('', home, name="home"),
    path('admin/', admin.site.urls),
    path('productos/', productosData, name="productosData"),
    path('crearProducto/', crearProducto, name="crearProducto"),
    path('editarProducto/<int:id>', editarProducto, name="editarProducto"),
    path('eliminarProducto/<int:id>', eliminarProducto, name="eliminarProducto"),
    path('clientes/', clientesData, name="clientesData"),
    path('crearCliente/', crearCliente, name="crearCliente"),
    path('editarCliente/<int:id>', editarCliente, name="editarCliente"),
    path('eliminarCliente/<int:id>', eliminarCliente, name="eliminarCliente"),
]
