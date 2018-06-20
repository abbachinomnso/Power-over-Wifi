function [avg, mini, maxi] = Z_4_readcsd_UP(tone, mc, ml, cap, road)



fileName = ['OUTPUT_', num2str(tone), 'tone_' num2str(mc), 'pF_', num2str(ml), 'nH_',num2str(cap), 'pF_', num2str(road), 'ohm', '.csd'];
fid = fopen(fileName);
key = false;
A = zeros(250000,1);
tline = fgetl(fid);
i=0;

while ischar(tline)
    %if ~isempty(strfind(tline,'#C'))
    if contains(tline,'#C')
        %disp(tline);
        key = true;
    end
    
    if key
       i = i+1;
       %temp_T = fscanf(fid,'%E :1');
       %A(i,1) = temp_T(1);
       temp_T = fscanf(fid,'%E :1 %E :2 %E :3 %E :4 %E :5');
       A(i,1) = temp_T(4);
       %if size(A,1) == 1
       %   break; 
       %end
       key = false;
    end
    
    tline = fgetl(fid);
    
end

avg = mean(A);
mini = min(A);
maxi = max(A);

fclose(fid);

end
