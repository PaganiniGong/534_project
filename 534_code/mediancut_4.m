img = imread('/Users/apple/Desktop/Project1-images/t3.jpg');
img_red = img(:,:,1);
img_green = img(:,:,2);
img_blue = img(:,:,3);
[m, n, z] = size(img);
A = (m*n);
B = (m*n);
C = (m*n);
for i = 1 : m
    for j = 1 : n
         A(i*j) = img_red(i,j);
    end
end
for i = 1 : m
    for j = 1 : n
         B(i*j) = img_green(i,j);
    end
end
for i = 1 : m
    for j = 1 : n
         C(i*j) = img_blue(i,j);
    end
end
all = [A',B',C'];
A = all(:,1);
B = all(:,2);
C = all(:,3);
values = [range(A),range(B),range(C)];
maxvalue = max(values);
    switch maxvalue 
        case range(A)
            z= 1
          all = sortrows(all,1);
        case range(B)
            z = 2
          all = sortrows(all,2);
        case range(C) 
            z = 3
          all = sortrows(all,3);
    end
 
all1 = all(1:(m*n)/2,:);
all2 = all((m*n)/2 + 1:end,:);
A = all1(:,1);
B = all1(:,2);
C = all1(:,3);
values = [range(A),range(B),range(C)];
maxvalue = max(values);
    switch maxvalue 
        case range(A)
            z= 1
          all1 = sortrows(all1,1);
        case range(B)
            z = 2
          all1 = sortrows(all1,2);
        case range(C) 
            z = 3
          all1 = sortrows(all1,3);
    end
A = all2(:,1);
B = all2(:,2);
C = all2(:,3);
values = [range(A),range(B),range(C)];
maxvalue = max(values);
    switch maxvalue 
        case range(A)
            z= 1
          all2 = sortrows(all2,1);
        case range(B)
            z = 2
          all2 = sortrows(all2,2);
        case range(C) 
            z = 3
          all2 = sortrows(all2,3);
    end
  [x,y] = size(all1);
  avg_r1 = sum(all1(1:fix(x/2),1))/fix(x/2);
  avg_r2 = sum(all1(fix(x/2) + 1:x,1))/fix(x/2);
  avg_g1 = sum(all1(1:fix(x/2),2))/fix(x/2);
  avg_g2 = sum(all1(fix(x/2) + 1:x,2))/fix(x/2);
  avg_b1 = sum(all1(1:fix(x/2),3))/fix(x/2);
  avg_b2 = sum(all1(fix(x/2) + 1:x,3))/fix(x/2);
 [x,y] = size(all2); 
  avg_r3 = sum(all2(1:fix(x/2),1))/fix(x/2);
  avg_r4 = sum(all2(fix(x/2) + 1:x,1))/fix(x/2);
  avg_g3 = sum(all2(1:fix(x/2),2))/fix(x/2);
  avg_g4 = sum(all2(fix(x/2) + 1:x,2))/fix(x/2);
  avg_b3 = sum(all2(1:fix(x/2),3))/fix(x/2);
  avg_b4 = sum(all2(fix(x/2) + 1:x,3))/fix(x/2);
  for i = 1:m
      for j =1:n
       value1 = (img(i,j,1) - avg_r1)^2 + (img(i,j,2) - avg_g1)^2 + (img(i,j,3) - avg_b1)^2;
       value2 = (img(i,j,1) - avg_r2)^2 + (img(i,j,2) - avg_g2)^2 + (img(i,j,3) - avg_b2)^2;
       value3 = (img(i,j,1) - avg_r3)^2 + (img(i,j,2) - avg_g3)^2 + (img(i,j,3) - avg_b3)^2;
       value4 = (img(i,j,1) - avg_r4)^2 + (img(i,j,2) - avg_g4)^2 + (img(i,j,3) - avg_b4)^2;
       values = [value1, value2, value3, value4];
       minvalue = min(values);
       switch minvalue
           case value1
               img(i,j,1) = avg_r1;
               img(i,j,2) = avg_g1;
               img(i,j,3) = avg_b1;
           case value2
               img(i,j,1) = avg_r2;
               img(i,j,2) = avg_g2;
               img(i,j,3) = avg_b2;
           case value3
               img(i,j,1) = avg_r3;
               img(i,j,2) = avg_g3;
               img(i,j,3) = avg_b3;
           case value4
               img(i,j,1) = avg_r4;
               img(i,j,2) = avg_g4;
               img(i,j,3) = avg_b4;
       end
     end
  end
       
  imshow(img);
        