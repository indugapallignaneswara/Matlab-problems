p = [5 0 0 6 -7 0]
%Polyvsl evaluate polynomial with respect to x =4
polyval(p,4)
r= roots(p)
poly(r)

polyder(p)
polyint(p)
p1 = [1 -4]

p2=[1 -3]
m =conv(p1,p2)
d = deconv(m,p1)

