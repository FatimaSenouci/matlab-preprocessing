clear all ;  clc ; close all ; 
global I 
I = imread('C:/medtest.png');
 I = im2double(I);
 figure ; imshow(I) ; 
 
 J = regiongrowing(I); 
 figure, imshow(I+J);