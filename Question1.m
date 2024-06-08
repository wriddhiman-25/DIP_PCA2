img = imread('autumn.tif');
figure, subplot(2,3,1), imshow(img), title('Original Image')


gray_levels = [128, 64, 32, 16, 8];
for i = 1:length(gray_levels)
    reduced_img = uint8(floor(double(img) / (256 / gray_levels(i))) * (256 / gray_levels(i)));
    subplot(2,3,i+1), imshow(reduced_img), title(['Gray Levels: ', num2str(gray_levels(i))])
end