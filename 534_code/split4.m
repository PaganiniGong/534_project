function res=split4(x0,y0,xm,yn,I,r)
    part1 = 0;
    part2 = 0;
    part3 = 0;
    part4 = 0;
    part1avg = 0;
    part1err = 0;
    part2avg = 0;
    part2err = 0;
    part3avg = 0;
    part3err = 0;
    part4avg = 0;
    part4err = 0;
    maxvalue = 0;
    x0 = x0;
    y0 = y0;
    xm = xm;
    yn = yn;
%   if x0 + 1 >= xm || y0 + 1 >= yn || x0 >= xm || y0 >= yn || (xm - x0) < 16 || (yn - y0) < 16
%       res = r;
%       return;
%   end
   
  for i = x0:fix(xm/2)
      for j = y0:fix(yn/2)
          part1 = part1 + I(i,j);
      end 
  end
  
  part1avg = part1/(fix((xm/2) - x0)*(fix(yn/2) - y0));
  
  for i = x0:fix(xm/2)
      for j = y0:fix(yn/2)
          part1err = abs(I(i,j) - part1avg);
      end 
  end
  
  for i = fix(xm/2)+ 1:xm
      for j = y0:fix(yn/2)
          part2 = part2 + I(i,j);
      end 
  end
  
  part2avg = part2/((xm-fix(xm/2))*(fix(yn/2) - y0));
  
  for i = fix(xm/2) + 1:xm
      for j = y0:fix(yn/2)
          part2err = abs(I(i,j) - part2avg);
      end 
  end
  
  for i = x0:fix(xm/2)
      for j = fix(yn/2) + 1:yn
          part3 = part3 + I(i,j);
      end 
  end
  
  part3avg = part3/((fix(xm/2) - x0)*(yn-fix(yn/2)));
  
  for i = x0:fix(xm/2)
      for j = fix(yn/2) + 1:yn
          part3err = abs(I(i,j) - part3avg);
      end 
  end
  
  for i = fix(xm/2) + 1:xm
     for j = fix(yn/2) + 1:yn
          part4 = part4 + I(i,j);
      end 
  end
  
  part4avg =  part4/((xm-fix(xm/2))*(yn-fix(yn/2)));
  
   for i = fix(xm/2) + 1:xm
     for j = fix(yn/2) + 1:yn
          part4err = abs(I(i,j) - part4avg);
      end 
   end
  
   values = [part1err, part2err, part3err, part4err];
   maxvalue = max(values);
   switch maxvalue
       case part1err
           z = 1
            for i = fix(xm/2)+ 1:xm
                for j = y0:fix(yn/2)
                    r(i,j) = fix(part2avg);
                end 
            end
            for i = x0:fix(xm/2)
                 for j = fix(yn/2) + 1:yn
                    r(i,j) = fix(part3avg) ;
                 end 
            end
            for i = fix(xm/2) + 1:xm
                 for j = fix(yn/2) + 1:yn
                     r(i,j) = fix(part4avg);
                 end 
            end
            split4(x0,y0,fix(xm/2),fix(yn/2),I,r);
       case part2err
           z = 2
           for i = x0:fix(xm/2)
                for j = y0:fix(yn/2)
                   r(i,j) = fix(part1avg);
                end 
           end
            for i = x0:fix(xm/2)
                 for j = fix(yn/2) + 1:yn
                    r(i,j) = fix(part3avg) ;
                 end 
            end
            for i = fix(xm/2) + 1:xm
                 for j = fix(yn/2) + 1:yn
                     r(i,j) = fix(part4avg);
                 end 
            end
%             split4(fix(xm/2) + 1,y0,xm,fix(yn/2),I,r);
            
           
       case part3err
           z = 3
           fprintf('%d\n', x0);
           fprintf('%d\n', xm);
           fprintf('%d\n', y0);
           fprintf('%d\n', yn);
            for i = x0:fix(xm/2)
                for j = y0:fix(yn/2)
                   r(i,j) = fix(part1avg);
                end 
           end
           for i = fix(xm/2)+ 1:xm
                for j = y0:round(yn/2)
                    r(i,j) = fix(part2avg);
                end 
           end
           for i = fix(xm/2) + 1:xm
                 for j = fix(yn/2) + 1:yn
                     r(i,j) = fix(part4avg);
                 end 
           end
          % split4(x0,fix(yn/2),fix(xm/2),yn,I,r);
       case part4err
           z = 4
           fprintf('%d', x0);
           fprintf('\n');
           fprintf('%d', fix(xm));
           fprintf('\n');
           fprintf('%d', y0);
          fprintf('\n');
           
           fprintf('%d', fix(yn));
           fprintf('\n');
           
         
        
%            for i = x0:x0+fix((xm-x0)/2)
%                for j = y0:y0+fix((yn-y0)/2)
%                    r(i,j) = fix(part1avg);
%                end
%            end
%            for i = (x0 + fix((xm - x0)/2))+ 1:xm
%                 for j = y0:fix(yn/2)
%                     r(i,j) = 255;
%                 end 
%             end
%            for i = x0:fix(xm/2)
%                  for j = fix(yn/2) + 1:yn
%                     r(i,j) = fix(part3avg) ;
%                  end 
%            end
%            x0 = fix(xm/2)+ 1;
%            y0 = fix(yn/2) + 1;
%            xm = xm;
%            yn = yn;
%            fprintf('%d', x0);
%            fprintf('%d', fix(xm));
%            fprintf('%d', y0);
%            fprintf('%d', fix(yn/2));
        %  split4(fix(xm/2)+ 1,fix(yn/2) + 1,xm,yn,I,r);
           
   end
   
 if z == 2
       split4(fix(xm/2) + 1,y0,xm,fix(yn/2),I,r);
     fprintf('%d', x0);
     fprintf('\n');
           fprintf('%d', fix(xm));
           fprintf('\n');
           fprintf('%d', y0);
           fprintf('\n');
           fprintf('%d', fix(yn));
           fprintf('\n');
           for i = x0:x0+fix((xm-x0)/2)
               for j = y0:y0+fix((yn-y0)/2)
                   r(i,j) = fix(part1avg);
               end
           end     
 end
 res = r;
    