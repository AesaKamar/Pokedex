x = linspace(-100, 100, 1000);
y = linspace(-100, 100, 1000);

while 1
    f = input("Enter an equation you want to plot:", 's')
    f= inline(f);
    close all

    for  i=1: size(x)(2);
        y(i)=f(x(i));
    end

    plot(x,y, "LineWidth", 10)

end
