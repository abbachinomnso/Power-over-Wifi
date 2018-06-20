function [ output_args ] = Z_2_runSpice_UP( path, fileName, tone, mc, ml, cap, road)

b{1} = ['* FYP2'];
b{2} = ['D_D1         N00210 N00240 FYPDD '];
b{3} = ['R_R1         N00190 N00206  50 TC=0,0 '];
b{4} = ['R_R2         0 N00240  ', num2str(road),' TC=0,0 '];
b{5} = ['L_L1         0 N00210  ', num2str(ml),'n  '];
b{6} = ['C_C1         N00206 N00210  ', num2str(mc),'p  TC=0,0 '];
b{7} = ['C_C2         0 N00240  ', num2str(cap),'p  TC=0,0 '];
b{8} = ['V_V1         N00190 0   PWL   '];
b{9} = ['+ FILE "', path, num2str(tone), fileName, '.csv" '];
b{10} = ['+  '];
b{11} = [''];

% Save file .cir line-by-line
[r,c] = size(b);
fp = fopen('SCHEMATIC1.net', 'w+');
for i = 1 : c
    fprintf(fp, '%s\n', b{i});
end
fclose(fp); 

datafileName = ['OUTPUT_', num2str(tone), 'tone_' num2str(mc), 'pF_', num2str(ml), 'nH_',num2str(cap), 'pF_', num2str(road), 'ohm', '.dat'];
outfileName = ['spiced_', num2str(tone), 'tone_' num2str(mc), 'pF_', num2str(ml), 'nH_',num2str(cap), 'pF_', num2str(road), 'ohm', '.out'];


system(['C:\Cadence\SPB_17.2\tools\bin\pspice.exe -r bias.sim -d ', datafileName, ' -o ', outfileName,' -e']);

                   % ? simulation name on your pspice project


end
