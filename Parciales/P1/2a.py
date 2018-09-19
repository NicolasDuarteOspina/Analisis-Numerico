import math

resultado=0.000000
cero=0.0000000
valorraizlog=-1.0000000
asindotalog=-1.9999999
n1=0.0000000

iteraciones = input("ingresa el numero de iteraciones")
inicio1 = input ("valor positivo, desde donde empezara la busqueda")
n2=(math.log1p(inicio1)+2)
for x in range(0, iteraciones):
    if (((math.log1p(inicio1)+2)-1)-((math.log1p(inicio1)+2)-1)!=0):
        resultado = inicio1-(n2)*(inicio1-n1)/(math.log1p(inicio1)-math.log1p(n1))
    inicio1=-1
    n1=-1
    n2=-1           
print(resultado)