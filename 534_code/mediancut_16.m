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
all = mediansort(all); 
all1 = all(1:(m*n)/2,:);
all2 = all((m*n)/2 + 1:end,:);
all1 = mediansort(all1);
all2 = mediansort(all2);
all3 = all1(1:fix((m*n)/4),:);
all4 = all1(fix((m*n)/4) + 1:end,:);
all5 = all2(1:fix((m*n)/4),:);
all6 = all2(fix((m*n)/4) + 1:end,:);
all3 = mediansort(all3);
all4 = mediansort(all4);
all5 = mediansort(all5);
all6 = mediansort(all6);
[x, y] = size(all3);
all7 = all3(1:fix(x/2),:);
all8 = all3(fix(x/2) + 1:end,:);
all9 = all4(1:fix(x/2),:);
all10 = all4(fix(x/2) + 1:end,:);
all11 = all5(1:fix(x/2),:);
all12 = all5(fix(x/2) + 1:end,:);
all13 = all6(1:fix(x/2),:);
all14 = all6(fix(x/2) + 1:end,:);
all7 = mediansort(all7);
all8 = mediansort(all8);
all9 = mediansort(all9);
all10 = mediansort(all10);
all11 = mediansort(all11);
all12 = mediansort(all12);
all13 = mediansort(all13);
all14 = mediansort(all14);
[x, y] = size(all7);
avg_r1 = sum(all7(1:fix(x/2),1))/fix(x/2);
avg_r2 = sum(all7(fix(x/2) + 1:x,1))/fix(x/2);
avg_g1 = sum(all7(1:fix(x/2),2))/fix(x/2);
avg_g2 = sum(all7(fix(x/2) + 1:x,2))/fix(x/2);
avg_b1 = sum(all7(1:fix(x/2),3))/fix(x/2);
avg_b2 = sum(all7(fix(x/2) + 1:x,3))/fix(x/2);
[x, y] = size(all8);
avg_r3 = sum(all8(1:fix(x/2),1))/fix(x/2);
avg_r4 = sum(all8(fix(x/2) + 1:x,1))/fix(x/2);
avg_g3 = sum(all8(1:fix(x/2),2))/fix(x/2);
avg_g4 = sum(all8(fix(x/2) + 1:x,2))/fix(x/2);
avg_b3 = sum(all8(1:fix(x/2),3))/fix(x/2);
avg_b4 = sum(all8(1:fix(x/2),3))/fix(x/2);
[x, y] = size(all9);
avg_r5 = sum(all9(1:fix(x/2),1))/fix(x/2);
avg_r6 = sum(all9(fix(x/2) + 1:x,1))/fix(x/2);
avg_g5 = sum(all9(1:fix(x/2),2))/fix(x/2);
avg_g6 = sum(all9(fix(x/2) + 1:x,2))/fix(x/2);
avg_b5 = sum(all9(1:fix(x/2),3))/fix(x/2);
avg_b6 = sum(all9(1:fix(x/2),3))/fix(x/2);
[x, y] = size(all10);
avg_r7 = sum(all10(1:fix(x/2),1))/fix(x/2);
avg_r8 = sum(all10(fix(x/2) + 1:x,1))/fix(x/2);
avg_g7 = sum(all10(1:fix(x/2),2))/fix(x/2);
avg_g8 = sum(all10(fix(x/2) + 1:x,2))/fix(x/2);
avg_b7 = sum(all10(1:fix(x/2),3))/fix(x/2);
avg_b8 = sum(all10(1:fix(x/2),3))/fix(x/2);
[x, y] = size(all11);
avg_r9 = sum(all11(1:fix(x/2),1))/fix(x/2);
avg_r10 = sum(all11(fix(x/2) + 1:x,1))/fix(x/2);
avg_g9 = sum(all11(1:fix(x/2),2))/fix(x/2);
avg_g10 = sum(all11(fix(x/2) + 1:x,2))/fix(x/2);
avg_b9 = sum(all11(1:fix(x/2),3))/fix(x/2);
avg_b10 = sum(all11(1:fix(x/2),3))/fix(x/2);
[x, y] = size(all12);
avg_r11 = sum(all12(1:fix(x/2),1))/fix(x/2);
avg_r12 = sum(all12(fix(x/2) + 1:x,1))/fix(x/2);
avg_g11 = sum(all12(1:fix(x/2),2))/fix(x/2);
avg_g12 = sum(all12(fix(x/2) + 1:x,2))/fix(x/2);
avg_b11 = sum(all12(1:fix(x/2),3))/fix(x/2);
avg_b12 = sum(all12(1:fix(x/2),3))/fix(x/2);
[x, y] = size(all13);
avg_r13 = sum(all13(1:fix(x/2),1))/fix(x/2);
avg_r14 = sum(all13(fix(x/2) + 1:x,1))/fix(x/2);
avg_g13 = sum(all13(1:fix(x/2),2))/fix(x/2);
avg_g14 = sum(all13(fix(x/2) + 1:x,2))/fix(x/2);
avg_b13 = sum(all13(1:fix(x/2),3))/fix(x/2);
avg_b14 = sum(all13(1:fix(x/2),3))/fix(x/2);
[x, y] = size(all14);
avg_r15 = sum(all14(1:fix(x/2),1))/fix(x/2);
avg_r16 = sum(all14(fix(x/2) + 1:x,1))/fix(x/2);
avg_g15 = sum(all14(1:fix(x/2),2))/fix(x/2);
avg_g16 = sum(all14(fix(x/2) + 1:x,2))/fix(x/2);
avg_b15 = sum(all14(1:fix(x/2),3))/fix(x/2);
avg_b16 = sum(all14(1:fix(x/2),3))/fix(x/2);
for i = 1:m
      for j =1:n
       value1 = (img(i,j,1) - avg_r1)^2 + (img(i,j,2) - avg_g1)^2 + (img(i,j,3) - avg_b1)^2;
       value2 = (img(i,j,1) - avg_r2)^2 + (img(i,j,2) - avg_g2)^2 + (img(i,j,3) - avg_b2)^2;
       value3 = (img(i,j,1) - avg_r3)^2 + (img(i,j,2) - avg_g3)^2 + (img(i,j,3) - avg_b3)^2;
       value4 = (img(i,j,1) - avg_r4)^2 + (img(i,j,2) - avg_g4)^2 + (img(i,j,3) - avg_b4)^2;
       value5 = (img(i,j,1) - avg_r5)^2 + (img(i,j,2) - avg_g5)^2 + (img(i,j,3) - avg_b5)^2;
       value6 = (img(i,j,1) - avg_r6)^2 + (img(i,j,2) - avg_g6)^2 + (img(i,j,3) - avg_b6)^2;
       value7 = (img(i,j,1) - avg_r7)^2 + (img(i,j,2) - avg_g7)^2 + (img(i,j,3) - avg_b7)^2;
       value8 = (img(i,j,1) - avg_r8)^2 + (img(i,j,2) - avg_g8)^2 + (img(i,j,3) - avg_b8)^2;
       value9 = (img(i,j,1) - avg_r9)^2 + (img(i,j,2) - avg_g9)^2 + (img(i,j,3) - avg_b9)^2;
       value10 = (img(i,j,1) - avg_r10)^2 + (img(i,j,2) - avg_g10)^2 + (img(i,j,3) - avg_b10)^2;
       value11 = (img(i,j,1) - avg_r11)^2 + (img(i,j,2) - avg_g11)^2 + (img(i,j,3) - avg_b11)^2;
       value12 = (img(i,j,1) - avg_r12)^2 + (img(i,j,2) - avg_g12)^2 + (img(i,j,3) - avg_b12)^2;
       value13 = (img(i,j,1) - avg_r13)^2 + (img(i,j,2) - avg_g13)^2 + (img(i,j,3) - avg_b13)^2;
       value14 = (img(i,j,1) - avg_r14)^2 + (img(i,j,2) - avg_g14)^2 + (img(i,j,3) - avg_b14)^2;
       value15 = (img(i,j,1) - avg_r15)^2 + (img(i,j,2) - avg_g15)^2 + (img(i,j,3) - avg_b15)^2;
       value16 = (img(i,j,1) - avg_r16)^2 + (img(i,j,2) - avg_g16)^2 + (img(i,j,3) - avg_b16)^2;
       values = [value1, value2, value3, value4, value5, value6, value7, value8,value9, value10, value11, value12,value13, value14, value15, value16];
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
           case value5
               img(i,j,1) = avg_r5;
               img(i,j,2) = avg_g5;
               img(i,j,3) = avg_b5;
           case value6
               img(i,j,1) = avg_r6;
               img(i,j,2) = avg_g6;
               img(i,j,3) = avg_b6;
           case value7
               img(i,j,1) = avg_r7;
               img(i,j,2) = avg_g7;
               img(i,j,3) = avg_b7;
           case value8
               img(i,j,1) = avg_r8;
               img(i,j,2) = avg_g8;
               img(i,j,3) = avg_b8;
            case value9
               img(i,j,1) = avg_r9;
               img(i,j,2) = avg_g9;
               img(i,j,3) = avg_b9;
           case value10
               img(i,j,1) = avg_r10;
               img(i,j,2) = avg_g10;
               img(i,j,3) = avg_b10;
           case value11
               img(i,j,1) = avg_r11;
               img(i,j,2) = avg_g11;
               img(i,j,3) = avg_b11;
           case value12
               img(i,j,1) = avg_r12;
               img(i,j,2) = avg_g12;
               img(i,j,3) = avg_b12;
           case value13
               img(i,j,1) = avg_r13;
               img(i,j,2) = avg_g13;
               img(i,j,3) = avg_b13;
           case value14
               img(i,j,1) = avg_r14;
               img(i,j,2) = avg_g14;
               img(i,j,3) = avg_b14;
           case value15
               img(i,j,1) = avg_r15;
               img(i,j,2) = avg_g15;
               img(i,j,3) = avg_b15;
           case value16
               img(i,j,1) = avg_r16;
               img(i,j,2) = avg_g16;
               img(i,j,3) = avg_b16;
       end
     end
 end
imshow(img);


