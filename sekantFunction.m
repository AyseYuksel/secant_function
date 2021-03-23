%for example [result,error]=sekantFunction('cos(x)-x',0.5,pi/4,5)
%A closed interval -> [a,b]
%0.5 is a and pi/4 is b for this function
%5 is iteration value

function z=sekantFunction(func,a,b,n)

str1='@(x)';
str2=func;
str=[str1 str2];
f=str2func(str);

x(1)=a;
x(2)=b;
%calculating and returning root values according to dynamically assigned values of a and b
disp([x(1) abs(f(x(1)))]);
disp([x(2) abs(f(x(2)))]);

for i=1:n
    x(i+2)=x(i+1)-(f(x(i+1)).*(x(i+1)-x(i)))/(f(x(i+1))-f(x(i)));
    disp([x(i+2) f(x(i+2))]);
end