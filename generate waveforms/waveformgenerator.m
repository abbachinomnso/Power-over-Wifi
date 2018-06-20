for i=[10000000,2500000]
    for j=[1,2,4,8,16]
        final=generator(j,i);
    end
end

Fs = 10e9;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 8e5;             % Length of signal
format long;
t = (0:L-1)*T;        % Time vector

Y = fft(final');

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')