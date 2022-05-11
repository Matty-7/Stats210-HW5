M = 10000;
x = zeros(M,1);
y = zeros(M,1);
for m = 1:M
    r = rand;
    if r <= 1/8
        x(m) = 0; 
        y(m) = 0;
    elseif r <= 1/4
        x(m) = 0; 
        y(m) = 1;
    elseif r <= 1/2
        x(m) = 1; 
        y(m) = 0;
    else
        x(m) = 1; 
        y(m) = 1;
    end
end
xbar = sum(x)/M; 
ybar = sum(y)/M;
correlation_coefficient = (sum(x.*y)/M-xbar*ybar)/sqrt((sum(x.^2)/M-xbar^2)*(sum(y.^2)/M-ybar^2))