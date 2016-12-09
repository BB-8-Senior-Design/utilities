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
data = data.*255;
data = round(data);
data = uint8(data);

outputfile = fopen('7.bb8','wb');
>>>>>>> 4bc6e99b0d75512535c378e4988593ec56c02fdf
fwrite(outputfile,data);
fclose(outputfile);