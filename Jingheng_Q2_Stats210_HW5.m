N = 1000;
B = [4,3];
p = zeros(1,2);

for ij =1:2
    count=0;
    for k = 1 : N
        b = B(ij); 
        
        for n=1:10000
            if b==0
                count=count+1;
                break
            elseif b==5
                r1=rand(1);
                if r1<=0.4
                    b=b-1;
                else
                    b=b;
                end
            elseif b>0 && b<5
                 r2=rand(1);
                 if r2 <=0.5
                     b=b+1;
                 else
                     b=b-1;
                 end
            end
            
        end
    end
    r1_r2(ij)=count/N;
end
r1_r2
 