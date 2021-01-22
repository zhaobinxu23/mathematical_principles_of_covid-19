
clc
clear

%%  modeling individual behavior(weak immunity with d = 0.78) when infected with single 29900bp virus .
num_c_valve = 0;
for kkk = 1: 5000
    kkk

s(1,1)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 1
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
%       
     
         s(i+1,number+1).waiting_time = 0; 

         s(i+1,number+1).time = (10*(i+1));
         
         s(i+1,number+2).length = A.length - truncation_length(A.length); 
% 
%             
         s(i+1,number+2).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));
%       

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



matrix_d077_29900length(kkk,:) = ddd;
clear ddd
end
save('figure6a_data_29900','matrix_d077_29900length');
%% modeling individual behavior(strong immunity with d = 0.77) when infected with single 29900bp virus .
for kkk = 1: 5000
    kkk

ss(1,1)  = struct('length',29880,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 10
for i = 1:200  %% virus generations
    i;
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = ss(i,j);
    if d <= 0.77 %% this number = d;
         
        if time_phage+ss(i,j).waiting_time >= ss(i,j).replication_cycle 
         

         ss(i+1,number+1).length = A.length - truncation_length(A.length); 

             
         ss(i+1,number+1).replication_cycle = 10 /exp(((29903-ss(i+1,number+1).length))*(-0.006));

     
         ss(i+1,number+1).waiting_time = 0;

         ss(i+1,number+1).time = (10*(i+1));
         
         ss(i+1,number+2).length = A.length - truncation_length(A.length); 

         ss(i+1,number+2).replication_cycle = 10 /exp(((29903-ss(i+1,number+1).length))*(-0.006));


         ss(i+1,number+2).waiting_time = 0;
         ss(i+1,number+2).time = (10*(i));
         number = number+2;
        else

         ss(i+1,number+1).length = A.length ;
         ss(i+1,number+1).replication_cycle = A.replication_cycle;
         ss(i+1,number+1).waiting_time = 10 + A.waiting_time ;
         ss(i+1,number+1).time = (10*(i));
         number = number+1;
        end
    else 
    end
    end
    count_number = number;
    ddd(i) = count_number;
end


matrix_d077_29880length(kkk,:) = ddd;
clear ddd
end

save('figure6a_data_29880','matrix_d077_29880length');

model1 = matrix_d077_29900length;
model2 = matrix_d077_29880length;
mesh(model1);
hold on
mesh(model2);


