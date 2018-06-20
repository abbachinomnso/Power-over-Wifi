figure

RR = [1:1:14];
plot(RR, n1)
hold

plot(RR, n2)
plot(RR, n4)
plot(RR, n8)
plot(RR, n16)

xticks([1:1:14])
%xticks([1000 3600 5600 7500 9100 10000 12000 15000 20000 30000 43000 56000 75000 100000])
%xticklabels({'1000','3600','5600','7500','9100','10000','12000','15000','20000','30000','43000','56000','75000','100000'})
xticklabels({'1','3.6','5.6','7.5','9.1','10','12','15','20','30','43','56','75','100'})

%set(gca,'XTickLabel',R)
legend({'N=1', 'N=2', 'N=4', 'N=8', 'N=16'},'fontsize',40)
xlabel('Load Resistor/k\Omega','fontsize',40)
ylabel('Pdc/ \mu W','fontsize',40)

set(gca,'FontSize',30)

grid on
title('Vary Output Resistance','fontsize',40);
