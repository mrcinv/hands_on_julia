# cela števila
typeof(3)

2^2^2^2^2

bign = big(2)^2^2^2^2

typeof(bign)

sin(big(π))

# pomoč dobiš z ?
float(3)

Int(3.0)

Int(3.1)

f(x) = (x+1)^2
g(x) = x^2+2x+1

f([1,2,3,4,5])
map(f,1:5)

collect(1:5)

map(g,1:5)

g.(1:5)

enaka(f,g,x) = f(x)==g(x)

enaka(sin,cos,1)

enaka(f,g,1)

map(x->enaka(f,g,x),1:5)

1//2+1//3

rationalize(π)

rationalize(float(π),tol=1e-2)

ndiff(f,x,h) = (f(x+h) - f(x))/h

ndiff(sin,1,0.0001)-cos(1)

x = 1:5; h=0.00001;

ndiff(sin,x,h) - cos(x)

(ndiff(sin,x,h) - cos(x))./cos(x)
