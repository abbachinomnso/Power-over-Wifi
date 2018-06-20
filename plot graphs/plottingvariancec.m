close all
t=varyc04pf88nh{:,1};

n1 = varyc04pf88nh{:,2};
n2 = varyc04pf88nh{:,3};
n4 = varyc04pf88nh{:,4};
n8 = varyc04pf88nh{:,5};
n16 = varyc04pf88nh{:,6};

figure 
plot(t,n1)
hold
plot(t,n2)

plot(t,n4)

plot(t,n8)

plot(t,n16)

legend('N=1', 'N=2', 'N=4', 'N=8', 'N=16')
xlabel('C/pF')
ylabel('P_{DC}/\mu W')
