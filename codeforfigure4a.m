


clc
clear

num_c_valve = 0;
for kkk = 1: 1
    kkk

s(1,1)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,2)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,3)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,4)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,5)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,6)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,7)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,8)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,9)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,10)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,11)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,12)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,13)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,14)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,15)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,16)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,17)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,18)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,19)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,20)  = struct('length',29903,'replication_cycle',10,'waiting_time',0,'time',0);
count_number = 20; %% initial virus number = 20
for i = 1:500  %% virus generations
    i
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.72 %% this number = d;
         
        if time_phage+s(i,j).waiting_time >= s(i,j).replication_cycle 
         

         s(i+1,number+1).length = A.length - truncation_length(A.length); 
             
         s(i+1,number+1).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));%% we select -0.006  as para1 value;
%          end
     
         s(i+1,number+1).waiting_time = 0; 

         s(i+1,number+1).time = (10*(i+1));
         
         s(i+1,number+2).length = A.length - truncation_length(A.length); 
         s(i+1,number+2).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));


         s(i+1,number+2).waiting_time = 0;
         s(i+1,number+2).time = (10*(i));
         number = number+2;
        else

         s(i+1,number+1).length = A.length ;
         s(i+1,number+1).replication_cycle = A.replication_cycle;
         s(i+1,number+1).waiting_time = 10 + A.waiting_time ;
         s(i+1,number+1).time = (10*(i));
         number = number+1;
        end
    else 
    end
    end
    count_number = number
    ddd(i) = count_number;
end


x = [1:1:500];
plot(x(1:500),ddd(1:500));
clear ddd
end
