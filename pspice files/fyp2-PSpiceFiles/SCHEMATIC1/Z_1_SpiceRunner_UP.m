
ma_C = [0.1;0.2;0.3;0.4;0.5;0.6;0.7;0.8;0.9;1;1.1;1.2];             % pF (Matching C)
%ma_C = [0.7;0.8];             % pF (Matching C)
ma_L = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15];             % nH (Matching L)


%cap = 1000;            % pF
%road = 10000;          % ohm
%tone = 1;



cap = 1000;          % pF (Output C) 
roads = [15000];    % ohm (Load R)
tones = [1];                       % number of tones


moment = 0;
road = roads(1);
t_moment = length(ma_L)*length(ma_C)*length(tones)

testfile = '_tone_10000000_band';           % waveform file name
path = 'D:\FYP\Waveforms\wave_';          % waveform file path

    for i = 1:length(tones)
        tone = tones(i);
        
        for k = 1:length(ma_C)
            
            
            mat_C = ma_C(k);
            
            for l = 1:length(ma_L)
                moment = moment+1
                mat_L = ma_L(l);
            
                Z_2_runSpice_UP(path, testfile, tone, mat_C, mat_L, cap, road);
            end
        end
%             Z_2_runSpice_UP(path, testfile, tone, ma_C, ma_L, cap, road);

    end
        
        
    




