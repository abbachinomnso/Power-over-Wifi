function [final] = generator(tone, bandwidth)
Fs = 100e9;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 200e5;             % Length of signal
t = (0:L-1)*T;        % Time vector
freq = double(zeros(tone,1));
centerfreq = 2450000000;

% if bandwidth == 2500000
%     if tone ==1
%         freq(1,1) = centerfreq;
%     else
%         upsum = 2500000/(tone-1);
%         freq(1,1) = centerfreq - (bandwidth/2);
%         for i=2:tone
%             freq(i,1) = freq(i-1,1) + upsum;
%         end
%     end
% else if bandwidth == 10e6
%         if tone ==1
%             freq(1,1) = centerfreq;
%         else
%             upsum = 10e6/(tone-1);
%             freq(1,1) = centerfreq - (bandwidth/2);
%             for i=2:tone
%                 freq(i,1) = freq(i-1,1) + upsum;
%             end
%         end
%     end
% 
% end

final = zeros(1,L);
ff = zeros(1,L);
%-20dB corresponds to 10e-6W

for j = 1:tone
    d_f = bandwidth/(2*tone);
    d = (2*j)-(tone+1);
    freqz =  centerfreq + (d * d_f);
    ff = (sqrt(20e-6)/sqrt(tone))*(cos(2*pi* freqz *t));
final = final + ff;   
end

final = 2*final*sqrt(50); %from ekaterina paper 
%takes into account the resistance of antenna-matching 
%basically vin from paper

filename = sprintf('wave_%d_tone_%d_band.csv', tone, bandwidth ); % Whatever you want.
dlmwrite(filename, [t', final'],'precision',8);

end