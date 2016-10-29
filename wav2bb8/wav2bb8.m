% because matlab is so much better than python oh dear god
clear
clc
close all;
data = audioread('2.wav');
data = data-min(data);
data = data/max(data);
data = data.*255;
data = round(data);
data = uint8(data);

outputfile = fopen('2.bb8','wb');
fwrite(outputfile,data);
fclose(outputfile);