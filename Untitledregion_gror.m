
reg_maxdist = 0.2;
I = im2double(imread('C:/medtest.png'));
subplot(121);
imshow(I);
% let the user pick one point
[x,y] = ginput(1);
% round to integer to match required input by regiongrowing function
x = round(x);
y = round(y);
% plot point on original image
hold on;
plot(x,y,'xg','MarkerSize',20,'LineWidth',2);
hold off;
% get region from seed point
J = regiongrowing(I,y,x,reg_maxdist);
% plot region
subplot(122);
imshow(J);