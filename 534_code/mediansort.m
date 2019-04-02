function res = mediansort(all)
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
res = all;