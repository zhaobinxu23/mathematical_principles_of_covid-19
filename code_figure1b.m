%% 1
%% before run this program, you have to load the data 'metadata.xlsx' into matlab. 
%% we did this manually by using the matlab import data menu.

kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-01',7) == 1) 
            data1(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end

%% 2
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-02',7) == 1) 
            data2(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 3
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-03',7) == 1) 
            data3(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 4
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-04',7) == 1) 
            data4(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 5
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-05',7) == 1) 
            data5(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 6
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-06',7) == 1) 
            data6(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 7
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-07',7) == 1) 
            data7(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 8
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-08',7) == 1) 
            data8(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 9
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-09',7) == 1) 
            data9(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 10
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-10',7) == 1) 
            data10(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 11
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-11',7) == 1) 
            data11(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 12
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-12',7) == 1) 
            data12(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end


for i = 29400:30000
    pro_value1(i) = max(size(find((data1(:)) == i)))/max(size(data1));
    pro_value2(i) = max(size(find((data2(:)) == i)))/max(size(data2));
    pro_value3(i) = max(size(find((data3(:)) == i)))/max(size(data3));
    pro_value4(i) = max(size(find((data4(:)) == i)))/max(size(data4));
    pro_value5(i) = max(size(find((data5(:)) == i)))/max(size(data5));
    pro_value6(i) = max(size(find((data6(:)) == i)))/max(size(data6));
    pro_value7(i) = max(size(find((data7(:)) == i)))/max(size(data7));
    pro_value8(i) = max(size(find((data8(:)) == i)))/max(size(data8));
    pro_value9(i) = max(size(find((data9(:)) == i)))/max(size(data9));
    pro_value10(i) = max(size(find((data10(:)) == i)))/max(size(data10));
    pro_value11(i) = max(size(find((data11(:)) == i)))/max(size(data11));
    pro_value12(i) = max(size(find((data12(:)) == i)))/max(size(data12));
end
    exa_new_matrix(1,:) = pro_value1(29400:30000);
    exa_new_matrix(2,:) = pro_value2(29400:30000);
    exa_new_matrix(3,:) = pro_value3(29400:30000);
    exa_new_matrix(4,:) = pro_value4(29400:30000);
    exa_new_matrix(5,:) = pro_value5(29400:30000);
    exa_new_matrix(6,:) = pro_value6(29400:30000);
    exa_new_matrix(7,:) = pro_value7(29400:30000);
    exa_new_matrix(8,:) = pro_value8(29400:30000);
    exa_new_matrix(9,:) = pro_value9(29400:30000);
    exa_new_matrix(10,:) = pro_value10(29400:30000);
    exa_new_matrix(11,:) = pro_value11(29400:30000);
    exa_new_matrix(12,:) = pro_value12(29400:30000);
    waterfall(exa_new_matrix)

    
