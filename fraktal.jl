"""
Izračunaj ničlo funkcije z Newtonovo metodo
"""
function newton(f, df, x0, nat=1e-10, maxit=100)
  z = f(x0)
  it = 0
  while abs(z)>nat && (it < maxit)
    x0 = x0 - z/df(x0)
    z = f(x0)
    it += 1
  end
  x0, it
end
"""
Izračunaj h kateri ničli enačbe konvergira Newtonova metoda za različne približke
"""
function fraktal(z0,w0,n=400,m=300, nat=1e-8)
  f(z) = z^3-1
  df(z) = 3z^2
  Z = zeros(Int8,m,n)
  x = linspace(real(z0), real(w0), n)
  y = linspace(imag(z0), imag(w0), m)
  for i=1:n, j=1:m
    z,it = newton(f,df,x[i]+im*y[j], nat)
    if abs(z-1)<10nat
      Z[j,i] = 20 + min(it,20)
    elseif abs(z-exp(2im*π/3))<10nat
      Z[j,i] = 40 + min(it,20)
    elseif abs(z-exp(4im*π/3))<10nat
      Z[j,i] = 60 + min(it,20)
    end
  end
  Z
end
