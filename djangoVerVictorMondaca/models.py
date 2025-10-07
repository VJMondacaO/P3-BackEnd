from django.db import models

class Productos(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField()
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    stock = models.IntegerField()
    categoria = models.CharField(max_length=50)
    estado = models.CharField(max_length=20, choices=[
        ('disponible', 'Disponible'),
        ('agotado', 'Agotado'),
        ('descontinuado', 'Descontinuado')
    ])
    proveedor = models.CharField(max_length=100)
    observaciones = models.TextField(blank=True, null=True)
    
    def __str__(self):
        return self.nombre

class Clientes(models.Model):
    ID_Cliente = models.AutoField(primary_key=True)
    Nombre_Cliente = models.CharField(max_length=100)
    Correo = models.EmailField()
    Telefono = models.CharField(max_length=15)
    Direccion = models.CharField(max_length=200)
    Ciudad = models.CharField(max_length=50)
    Pais = models.CharField(max_length=50)
    Fecha_Registro = models.DateField(auto_now_add=True)
    Tipo_Cliente = models.CharField(max_length=20, choices=[
        ('individual', 'Individual'),
        ('mayorista', 'Mayorista'),
        ('corporativo', 'Corporativo')
    ])
    Fecha_Nacimiento = models.DateField(blank=True, null=True)
    Genero = models.CharField(max_length=10, choices=[
        ('M', 'Masculino'),
        ('F', 'Femenino'),
        ('O', 'Otro')
    ], blank=True, null=True)
    Preferencias = models.TextField(blank=True, null=True)
    
    def __str__(self):
        return self.Nombre_Cliente