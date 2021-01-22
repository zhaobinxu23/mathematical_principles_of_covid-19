
clc
clear

%%   modeling infections with virus length =29900nt
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
    if d <= 0.78 %% this number = d;
         
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
    matrix_figure5a_29900(kkk,i) = ddd(i); 
end


clear ddd
end

%% modeling infection with virus length = 29890nt
for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29890,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 1
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.78 %% this number = d;
         
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
    matrix_figure5a_29890(kkk,i) = ddd(i); 
end


clear ddd
end
%%  29880 nt
for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29880,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 20
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.78 %% this number = d;
         
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
    matrix_figure5a_29880(kkk,i) = ddd(i); 

end

clear ddd
end
%% 29870nt
for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29870,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 1
for i = 1:100  %% virus generations
   
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.78 %% this number = d;
         
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
    matrix_figure5a_29870(kkk,i) = ddd(i); 
end


clear ddd
end

%% 29860 nt
for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29860,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 20
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.78 %% this number = d;
         
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
    matrix_figure5a_29860(kkk,i) = ddd(i); 
end


clear ddd
end
%% 29850 nt
for kkk = 1: 100
    kkk

s(1,1)  = struct('length',29850,'replication_cycle',10,'waiting_time',0,'time',0);

count_number = 1; %% initial virus number = 20
for i = 1:100  %% virus generations
    
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= 0.78 %% this number = d;
         
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
    matrix_figure5a_29850(kkk,i) = ddd(i); 
end


clear ddd
end
final_matrix_figure5a(1,:) = mean(matrix_figure5a_29850);
final_matrix_figure5a(2,:) = mean(matrix_figure5a_29860);
final_matrix_figure5a(3,:) = mean(matrix_figure5a_29870);
final_matrix_figure5a(4,:) = mean(matrix_figure5a_29880);
final_matrix_figure5a(5,:) = mean(matrix_figure5a_29890);
final_matrix_figure5a(6,:) = mean(matrix_figure5a_29900);
save('matrix_figure5a','final_matrix_figure5a');
model = load('matrix_figure5a.mat');
model = model.final_matrix_figure5a;
waterfall(model)

