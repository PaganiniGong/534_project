Istatxture = zeros(256,2000);
for i = 1:2000
    clear I;
    I = imread(['pic',num2str(i) ,'.jpg']);
    Istatxture(:,i)=lbp(I);
end 
save statxture Istatxture;
