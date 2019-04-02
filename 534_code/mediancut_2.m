img = imread('/Users/apple/Desktop/Project1-images/t3.jpg');
maxvalue_r = -1;
minvalue_r = 256;
maxvalue_g = -1;
minvalue_g = 256;
maxvalue_b = -1;
minvalue_b = 256;
[m, n, z] = size(img);
A = (m*n);
B = (m*n);
C = (m*n);
img_red = img(:,:,1);
img_green = img(:,:,2);
img_blue = img(:,:,3);
for i = 1 : m
    for j = 1 : n
        A(i*j) = img_red(i,j);
        minvalue_r = min(img_red(i,j),minvalue_r);
        maxvalue_r = max(img_red(i,j),maxvalue_r);
    end
end
range_r = maxvalue_r - minvalue_r;
for i = 1 : m
    for j = 1 : n
        B(i*j) = img_green(i,j);
        minvalue_g = min(img_green(i,j),minvalue_g);
        maxvalue_g = max(img_green(i,j),maxvalue_g);
    end
end
range_g = maxvalue_g - minvalue_g;
for i = 1 : m
    for j = 1 : n
        C(i*j) = img_blue(i,j);
        minvalue_b = min(img_blue(i,j),minvalue_b);
        maxvalue_b = max(img_blue(i,j),maxvalue_b);
    end
end
range_b = maxvalue_b - minvalue_b;
ranges = [range_r ,range_g, range_b];
maxrange = max(ranges);
all = [A',B',C'];
switch maxrange
    case range_r
       base_r = sortrows(all,1);
       [x,y] = size(base_r);
       avg_r1 = sum(base_r(1:fix(x/2),1))/fix(x/2);
       avg_r2 = sum(base_r(fix(x/2) + 1:x,1))/fix(x/2);
       avg_g1 = sum(base_r(1:fix(x/2),2))/fix(x/2);
       avg_g2 = sum(base_r(fix(x/2) + 1:x,2))/fix(x/2);
       avg_b1 = sum(base_r(1:fix(x/2),3))/fix(x/2);
       avg_b2 = sum(base_r(fix(x/2) + 1:x,3))/fix(x/2);
       for i = 1 : m
             for j = 1:n
                 if ((img(i,j,1) - avg_r1)^2 +(img(i,j,2) - avg_g1)^2 + (img(i,j,3) - avg_b1)^2) <= ((img(i,j,1) - avg_r2)^2 +(img(i,j,2) - avg_g2)^2 + (img(i,j,3) - avg_b2)^2)
                      img(i,j,1) = fix(avg_r1);
                      img(i,j,2) = fix(avg_g1);
                      img(i,j,3) = fix(avg_b1);
                 else
                      img(i,j,1) = fix(avg_r2);
                      img(i,j,2) = fix(avg_g2);
                      img(i,j,3) = fix(avg_b2);
                 end
             end
       end
    case range_g
       base_g = sortrows(all,2);
       [x,y] = size(base_g);
       avg_r1 = sum(base_g(1:fix(x/2),1))/fix(x/2);
       avg_r2 = sum(base_g(fix(x/2) + 1:x,1))/fix(x/2);
       avg_g1 = sum(base_g(1:fix(x/2),2))/fix(x/2);
       avg_g2 = sum(base_g(fix(x/2) + 1:x,2))/fix(x/2);
       avg_b1 = sum(base_g(1:fix(x/2),3))/fix(x/2);
       avg_b2 = sum(base_g(fix(x/2) + 1:x,3))/fix(x/2);
       for i = 1 : m
             for j = 1:n
                 if img(i,j,2) < avg_g2
                      img(i,j,1) = fix(avg_r1);
                      img(i,j,2) = fix(avg_g1);
                      img(i,j,3) = fix(avg_b1);
                 else
                      img(i,j,1) = fix(avg_r2);
                      img(i,j,2) = fix(avg_g2);
                      img(i,j,3) = fix(avg_b2);
                 end
             end
       end
    case range_b
       base_b = sortrows(all,3);
       [x,y] = size(base_b);
       avg_r1 = sum(base_b(1:fix(x/2),1))/fix(x/2);
       avg_r2 = sum(base_b(fix(x/2) + 1:x,1))/fix(x/2);
       avg_g1 = sum(base_b(1:fix(x/2),2))/fix(x/2);
       avg_g2 = sum(base_b(fix(x/2) + 1:x,2))/fix(x/2);
       avg_b1 = sum(base_b(1:fix(x/2),3))/fix(x/2);
       avg_b2 = sum(base_b(fix(x/2) + 1:x,3))/fix(x/2);
       for i = 1 : m
             for j = 1:n
                 if img(i,j,1) < avg_b2
                      img(i,j,1) = fix(avg_r1);
                      img(i,j,2) = fix(avg_g1);
                      img(i,j,3) = fix(avg_b1);
                 else
                      img(i,j,1) = fix(avg_r2);
                      img(i,j,2) = fix(avg_g2);
                      img(i,j,3) = fix(avg_b2);
                 end
             end
       end
end

imshow(img);
        
        