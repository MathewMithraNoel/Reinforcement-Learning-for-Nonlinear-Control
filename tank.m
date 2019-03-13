
function hdot = tank(t,h)

global Q2;

global action;

Q1=action;

a1=1;
a2=1;
a3=1;
A1=1;
A2=1;

if h(1) >= h(2)
    hdot= [(Q1  -a3*sqrt(h(1)-h(2)))/A1; (Q2 - a2*sqrt(h(2)) + a3*sqrt(h(1)-h(2)))/A2];
else
    hdot= [(Q1  +a3*sqrt(h(2)-h(1)))/A1; (Q2 - a2*sqrt(h(2)) - a3*sqrt(h(2)-h(1)))/A2];
end

end

