clear;
data = getsimdata('trial.txt');
toDelete = isnan(data.C);
data(toDelete,:) = [];

sizes = size(data);

dataarray = table2array(data);

alldata = [];

for i=1:sizes(1)
    for j=1:sizes(2)
       if ~isnan(dataarray(i,j))
       alldata(end+1) = dataarray(i,j);
       end
    end   
end