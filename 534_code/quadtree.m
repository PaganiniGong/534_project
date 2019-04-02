img = imread('/Users/apple/Desktop/Project1-images/t3.jpg');
img_test = img(:,:,1); %Convert test images into R grayscale images
%img_test = img(:,:,2);%Convert test images into G grayscale images
%img_test = img(:,:,3);%Convert test images into B grayscale images
imshow(img_test);
[m, n] = size(img_test);
input = zeros(m,n);
img_test = double(img_test);
for i = 1:m
      for j = 1:n
         input(i,j) = img_test(i,j);
      end 
 end
res = split4(1,1,m,n,img_test,input);
result = uint8(res);
imshow(result);
[a,b] = find(result == 255);