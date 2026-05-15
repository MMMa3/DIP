clear;clc;close all;
% Rotating properties of FT
% Original Image
I=zeros(256,256);I(28:228,108:148)=1;subplot(1,4,1);imshow(I);title("Original");
% FT
J=fft2(I); F=abs(J);J1=fftshift(F);
subplot(1,4,2);imshow(J1,[5 50]);title("FT of Original");
% Rotate
J=imrotate(I,315,'bilinear','crop'); subplot(1,4,3);imshow(J);title("Rotated");
% Rotated FT
J1=fft2(J);F=abs(J1);J2=fftshift(F);
subplot(1,4,4);imshow(J2,[5 50]);title("FT of Rotated");