figure

CC = [1:1:8];
plot(CC, n1)
hold

plot(CC, n2)
plot(CC, n4)
plot(CC, n8)
plot(CC, n16)

xticks([1:1:8])

xticklabels({'0.01','0.1','1','10','100','1000','1500','2000'})

legend({'N=1 R=1000', 'N=2 R=3600', 'N=4 R=3600', 'N=8 R=7500', 'N=16 R=12000'},'fontsize',40, 'Location', 'Best')
xlabel('C/pF','fontsize',40)
ylabel('Pdc/ \mu W','fontsize',40)

set(gca,'FontSize',30)

grid on
title('Vary Output Capacitance','fontsize',40);