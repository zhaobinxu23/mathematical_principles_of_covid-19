
clc
clear
%% modeling individual behavior(strong immunity with d = 0.77) when infected with  29900bp virus .
num_c_valve = 0;
for kkk = 1: 500
    kkk

s(1,1)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,2)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,3)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,4)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,5)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,6)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,7)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,8)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,9)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,10)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,11)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,12)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,13)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,14)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,15)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,16)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,17)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,18)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,19)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);
s(1,20)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);


for input_number  = 1:20
count_number = input_number; %% initial virus number = 1
for i = 1:200  %% virus generations
    i;
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.77 %% this number = d;
         
        if time_phage+s(i,j).waiting_time >= s(i,j).replication_cycle 
         

         s(i+1,number+1).length = A.length - truncation_length(A.length); 
     
         s(i+1,number+1).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));

     
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
    count_number = number;
    ddd(i) = count_number;
end



matrix_d077n1len29900(input_number,kkk) = max(ddd);
clear ddd
end
end
save('matrix_for_figure7_29900','matrix_d077n1len29900')



model = matrix_d077n1len29900;

yy(1) = 0;
ww(1) = 0;
zz(1) = 0;

for i = 1:20
    yy(i+1) = length(find(model(i,:)>=500))/500;
    ww(i+1) = length(find(model(i,:)>=750))/500;
    zz(i+1) = length(find(model(i,:)>=1000))/500;
end
x = [0:1:20];
plot(x,yy);
hold on
plot(x,ww);
hold on
plot(x,zz);