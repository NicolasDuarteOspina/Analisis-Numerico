#install.packages("Matrix")
# Instalar el paquete PolynomF
# install.packages("PolynomF")
require(PolynomF)
lagrange = function(x,y,a){
  n = length(x)
  if(a < min(x) || max(x) < a) stop("No está interpolando")
  X = matrix(rep(x, times=n), n, n, byrow=T)
  mN = a - X; diag(mN) = 1
  mD = X - t(X); diag(mD) = 1
  Lnk = apply(mN, 1, prod)/apply(mD, 2, prod)
  sum(y*Lnk)
}
x = c( 100,200,300,400,450,500,600)
y = c(-160,-35,-4.2,9,x,16.9,21.3)


lagrange(x[1:5],y[1:5], 100)
lagrange(x[2:5],y[2:5], 200)
lagrange(x[2:6],y[2:6], 300)
lagrange(x[2:6],y[2:6], 400)
lagrange(x[2:6],y[2:6], 450)
lagrange(x[2:6],y[2:6], 500)

datx = x[2:5]; daty = y[2:5]

# Polinomio de ajuste (polinomio interpolante en este caso)
datx = x[2:5]; daty = y[2:5]
polyAjuste = poly.calc(datx,daty)
polyAjuste (-0.35475)
#-0.1 + 4.433333*x - 15*x^2 + 16.66667*x^3
plot(datx,daty, pch=19, cex=1, col = "red", asp=1) # Representación con puntos
curve(polyAjuste,add=T) # Curva de ajuste (polinomio interpolante) y puntos
#curve(polyAjuste,add=T, lty=3) #lty=3 puntos
