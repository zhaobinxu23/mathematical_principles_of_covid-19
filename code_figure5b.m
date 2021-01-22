
clc
clear

%% modeling epidemic when d = 0.78

for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 1
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.78 %% this number = C1/2;
         
        if time_phage+s(i,j).waiting_time >= s(i,j).replication_cycle 
         

         s(i+1,number+1).length = A.length - truncation_length(A.length); %% fix(abs(normrnd(0,15))/1); %% 5 is the ¦È value

             
         s(i+1,number+1).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));%% we select 10 min as the initial replication cycle;

     
         s(i+1,number+1).waiting_time = 0; %% time_phage + s(i,j).waiting_time - s(i,j).replication_cycle ;%%

         s(i+1,number+1).time = (10*(i+1));
         
         s(i+1,number+2).length = A.length - truncation_length(A.length); %% 5 is the ¦È

         s(i+1,number+2).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));


         s(i+1,number+2).waiting_time = 0;%%  time_phage+s(i,j).waiting_time - s(i,j).replication_cycle ;
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
    matrix_figure5b_1(kkk,i) = ddd(i); 
    
end

clear ddd
end



%% modeling epidemic when d = 0.775

for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 1
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.775 %% this number = C1/2;
         
        if time_phage+s(i,j).waiting_time >= s(i,j).replication_cycle 
         

         s(i+1,number+1).length = A.length - truncation_length(A.length); %% fix(abs(normrnd(0,15))/1); %% 5 is the ¦È value

             
         s(i+1,number+1).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));%% we select 10 min as the initial replication cycle;

     
         s(i+1,number+1).waiting_time = 0; %% time_phage + s(i,j).waiting_time - s(i,j).replication_cycle ;%%

         s(i+1,number+1).time = (10*(i+1));
         
         s(i+1,number+2).length = A.length - truncation_length(A.length); %% 5 is the ¦È

         s(i+1,number+2).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));


         s(i+1,number+2).waiting_time = 0;%%  time_phage+s(i,j).waiting_time - s(i,j).replication_cycle ;
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
    matrix_figure5b_2(kkk,i) = ddd(i); 
    
end

clear ddd
end

%% modeling epidemic when d = 0.77

for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29900,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 1
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.77 %% this number = C1/2;
         
        if time_phage+s(i,j).waiting_time >= s(i,j).replication_cycle 
         

         s(i+1,number+1).length = A.length - truncation_length(A.length); %% fix(abs(normrnd(0,15))/1); %% 5 is the ¦È value

         s(i+1,number+1).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));%% we select 10 min as the initial replication cycle;

     
         s(i+1,number+1).waiting_time = 0; %% time_phage + s(i,j).waiting_time - s(i,j).replication_cycle ;%%

         s(i+1,number+1).time = (10*(i+1));
         
         s(i+1,number+2).length = A.length - truncation_length(A.length); %% 5 is the ¦È

         s(i+1,number+2).replication_cycle = 10 /exp(((29903-s(i+1,number+1).length))*(-0.006));


         s(i+1,number+2).waiting_time = 0;%%  time_phage+s(i,j).waiting_time - s(i,j).replication_cycle ;
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
    matrix_figure5b_3(kkk,i) = ddd(i); 
    
end

clear ddd
end

for ii = 1:100
    matrix_figure5b_1_new(:,ii) = sort(matrix_figure5b_1(:,ii));
    matrix_figure5b_2_new(:,ii) = sort(matrix_figure5b_2(:,ii));
    matrix_figure5b_3_new(:,ii) = sort(matrix_figure5b_3(:,ii));
end
surf( matrix_figure5b_1_new);
hold on
surf( matrix_figure5b_2_new);
hold on
surf( matrix_figure5b_3_new);
