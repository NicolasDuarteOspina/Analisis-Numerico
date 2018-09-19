
from time import sleep
import codecs

print("punto 1.b")

col = int(input("# de columnas y filas:"))
fil = int(col)
mat1 =[[0 for x in range(fil)] for y in range(col)]
print("Ingrese los valores para la matriz #1, por filas")
for i in range(fil):
    for j in range(col):
        mat1[i][j] = int(input("numero:"))
mat2 =[[ 0 for x in range(fil)] for y in range(col)]
print("Ingrese los valores para la matriz #2, por filas")
for i in range(fil):
    for j in range(col):
        mat2[i][j] = int(input("numero:"))
resultado =[[0 for x in range(fil)] for y in range(col)]

for i in range(fil):
    for j in range(col):
        resultado[i][j] = mat1[i][j]+ mat2[i][j]
print("La suma de la matriz #1 y la matriz #2 es:")
print(resultado)
