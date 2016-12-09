% because matlab is so much better than python oh dear god
clear
clc
close all;
data = audioread('7.wav');
if size(data,2) == 2
    data = (data(:,1)+data(:,2))./2;
end
data = data-min(data);
data = data/max(data);
data = data.*127;
data = round(data);
data = uint8(data);

outputfile = fopen('7.bb8','wb');
fwrite(outputfile,data);
fclose(outputfile);