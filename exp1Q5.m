clear;clc;close all;
% Resize figures by Interpolation 
I=imread('Pictures/lena.jpg');
J1=imresize(I,10,'nearest');
J2=imresize(I,10,'bilinear');
J3=imresize(I,10,'bicubic');
figure
imshow(I);
title('Original Figure');
figure
imshow(J1);
title('Nearest interpolated');
saveas(gcf, 'lenaNearest.png');
figure
imshow(J2);
title('Bilinear interpolated');
saveas(gcf, 'lenaBili.png');
figure
imshow(J3);
title('Bicubic interpalated');
saveas(gcf, 'lenaBicu.png');
