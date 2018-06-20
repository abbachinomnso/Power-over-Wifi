
ma_C = [0.1;0.2;0.3;0.4;0.5;0.6;0.7;0.8;0.9;1;1.1;1.2];             % pF (Matching C)
%ma_C = [0.7;0.8];             % pF (Matching C)
ma_L = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15];             % nH (Matching L)
%cap = 1000;            % pF
%road = 10000;          % ohm
%tone = 1;


cap = 1000;              % should be same as "caps" in Z_1_SpiceRunner_UP.m
roads = [15000];      % should be same as "caps" in Z_1_SpiceRunner_UP.m
tones = [1];             % should be same as "caps" in Z_1_SpiceRunner_UP.m

moment = 0;


tone=tones(1);
road=roads(1);

t_moment = length(ma_C)*length(tones)*length(ma_L)
T = zeros(t_moment,9);


for k = 1:length(ma_C)
    mat_C = ma_C(k);
        
        for i = 1:length(ma_L)
            moment = moment+1
            mat_L = ma_L(i);
            
            T(moment,1) = tone;
            T(moment,2) = mat_C;
            T(moment,3) = mat_L;
            T(moment,4) = cap;
            T(moment,5) = road;
            [T(moment,6),T(moment,7),T(moment,8)] = Z_4_readcsd_UP(tone, mat_C, mat_L, cap, road);
            T(moment,9) = (T(moment,6))^2/road;
        end
        
    

end

filename_1 = ['result_RC_config_',  num2str(tone), 'tones_', num2str(cap), 'pF_', num2str(road), 'ohms.csv'];
Z_5_result_csv_gen(T, filename_1);

%======================================











