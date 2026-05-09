clear;clc;close all;
% Linear transformation of Grey Picture
I=imread("Pictures/boy.jpg");
I=im2double(I);
figure(1);subplot(1,5,1);
imshow(I,[0,255]);title('Original Pic.','FontSize',7);

a=2;b=-50;
O=a.*I+b/255;
figure(1);subplot(1,5,2); imshow(O,[0,255]);
title('a=2,b=-50, Contrast up','fontsize',7);

a=0.5;b=-50;
O=a.*I+b/255;
figure(1);subplot(1,5,3); imshow(O,[0,255]);
title('a=0.5,b=-50, Contrast dn.','fontsize',7);

a=1;b=50;
O=a.*I+b/255;
figure(1);subplot(1,5,4); imshow(O,[0,255]);
title('a=1,b=-50, Linear trans.','fontsize',7);

a=-1;b=255;
O=a.*I+b/255;
figure(1);subplot(1,5,5); imshow(O,[0,255]);
title('a=-1,b=255, Color rev.','fontsize',7);