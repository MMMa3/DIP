clear;clc;close all;
% Horizontal turn
I=imread('Pictures/cameraman.tif');
subplot(121);
imshow(I);
title('Original Figure');
[M,N]=size(I); g=zeros(M,N);
for i=1:M
    for j=1:N
        g(i,j)=I(i,N-j+1);
    end
end
subplot(122); imshow(uint8(g)); title('Horizontal Returned');
