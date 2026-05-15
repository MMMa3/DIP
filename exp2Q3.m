clear;clc;close all;
% Grey level's fusion
I=imread('Pictures/lena.bmp');
I=rgb2gray(I);
K=16;
H=histeq(I,K);
figure,imshow(I,[]);
figure,imshow(H,[]);
figure,hist(double(I),16);
figure,hist(double(H),16);
