clear;clc;close all;
% Salt & Pepper noise
I=imread('Pictures/i_peppers_gray.bmp');
I=rgb2gray(I);
figure; imshow(I);
I_noise=double(imnoise(I,'salt & pepper',0.06));
figure; imshow(I_noise,[]);
I_smoothed=imfilter(I_noise,fspecial('average',5));
figure; imshow(I_smoothed,[]);
