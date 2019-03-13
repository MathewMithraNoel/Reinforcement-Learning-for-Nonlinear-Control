% computes the closest discretized state to snext

function [r,s] = closest(snext)

global h1;
global h2;
global delta;

if snext(1) > h1(end)+delta
    r = length(h1);
end

if snext(2) > h2(end)+delta
    s = length(h2);
end


if snext(1) <= h1(end)+delta
    r = find(abs(h1-snext(1)) <= delta,1);
end

if snext(2) <= h2(end)+delta
    s = find(abs(h2-snext(2)) <= delta,1);
end


end

