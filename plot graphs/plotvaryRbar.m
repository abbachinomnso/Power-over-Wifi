figure

r1 = zz{1,:};
r2 = zz{2,:};
r3 = zz{3,:};
r4 = zz{4,:};
r5 = zz{5,:};
r6 = zz{6,:};
r7 = zz{7,:};
r8 = zz{8,:};
r9 = zz{9,:};
r10 = zz{10,:};
r11 = zz{11,:};
r12 = zz{12,:};
r13 = zz{13,:};
r14 = zz{14,:};
bar([r1;r2;r3;r4;r5;r6;r7;r8;r9;r10;r11;r12;r13;r14])


xticks([1:1:14])
%xticks([1000 3600 5600 7500 9100 10000 12000 15000 20000 30000 43000 56000 75000 100000])
xticklabels({'1000','3600','5600','7500','9100','10000','12000','15000','20000','30000','43000','56000','75000','100000'})
%set(gca,'XTickLabel',R)
legend('N=1', 'N=2', 'N=4', 'N=8', 'N=16')
xlabel('Load Resistor/\Omega','fontsize',15)
ylabel('Pdc/ \mu W','fontsize',15)

grid on
title('Vary Output Resistance','fontsize',20);
