%% this code belongs to the following paper:
% Basheer, O. A., & Al-Ameen, Z. (2024). ILLUMINATION ENHANCEMENT OF NIGHTTIME IMAGES USING A REGULATED SINGLE SCALE RETINEX ALGORITHM. 
% Jordanian Journal of Computers & Information Technology, 10(2), 138-151.
% DOI: 10.5455/jjcit.71-1705156218
clear all; clc; close all;
img = im2double(imread('2.jpg'));
HSV = rgb2hsv(img);

tic; beta=6; HSV(:, :, 3) = RSSR(HSV(:, :, 3), beta); toc;

RGB = hsv2rgb(HSV);
figure; imshow([img,RGB])
% imwrite(RGB, 'RSSR_b6.jpg');