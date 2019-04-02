img = imread('/Users/apple/Desktop/Project1-images/t3.jpg');
 %img_test = img(:,:,1); %Convert test images into R grayscale images
%img_test = img(:,:,2);%Convert test images into G grayscale images
img_test = img(:,:,3);%Convert test images into B grayscale images
imshow(img_test);
[m, n] = size(img_test);
pixels = m*n;% the sum of pixels
% for counting the pixels of every scale
count = zeros(1,256);
newcount = zeros(1,256);
%probability of each scale
pro = zeros(1,256);
%initialize the maximum value
maxvalue = 0;
maxthreshold = 0;
for i = 1:m
    for j = 1:n
       tmp = img_test(i, j);
       if tmp == 0
           count(256) = count(256) + 1;
        else count(tmp) = count(tmp) + 1;
       end
    end
end
%adjust the order of array
for i = 1:256
    if i == 256
    newcount(1) = count(i);
    else newcount(i + 1) = count(i);
    end
end
for i = 1:256
    pro(i) = newcount(i)/pixels;
end
for i = 1 :256
    w0 = 0 ; w1 = 0;u_0 = 0; u0 = 0; u_1 = 0; u1 = 0; tmp = 0;
    for j = 1:256
        if j <= i
            w0 = w0 + pro(j);
            u_0 = u_0 + (j-1)*pro(j);
        else
            w1 = w1 + pro(j);
            u_1 = u_1 + (j-1)*pro(j);
        end
    end
    u0 = u_0/w0;
    u1 = u_1/w1;
    tmp = w0*w1*((u0 - u1)^2);
    if tmp > maxvalue
       maxvalue = tmp;
       maxthreshold = i - 1;
    end
end
%compare the final results to the standard function;
standard = 255*graythresh(img_test); 
error = maxthreshold - standard;
 if error == 0
  fprintf('%s\n','true');
 else
  fprintf('%s\n','false');
 end
%binarize the images
for i=1:m
    for j=1:n
         if img_test(i,j)> maxthreshold
                img_test(i,j) = 255;
            else img_test(i,j) = 0;
         end
    end
end
imshow(img_test);
        
    