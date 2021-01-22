%% before run this program, you have to load the data 'metadata.xlsx' into matlab. 
%% we did this manually by using the matlab import data menu.
%% Jan and Feb
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-01',7) == 1) || (strncmp(SampleCollectionDate(i),'2020-02',7) == 1)
            data1(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 3 and 4
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-03',7) == 1) || (strncmp(SampleCollectionDate(i),'2020-04',7) == 1)
            data2(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end

%% 5 and 6
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-05',7) == 1) || (strncmp(SampleCollectionDate(i),'2020-06',7) == 1)
            data3(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end
%% 7 and 8
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-07',7) == 1) || (strncmp(SampleCollectionDate(i),'2020-08',7) == 1)
            data4(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end

%% 9 and 10
kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-09',7) == 1) || (strncmp(SampleCollectionDate(i),'2020-10',7) == 1)
            data5(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end

%% 11 and 12

kk = 1;
for i = 1: 369019
    if strcmp(NucCompleteness(i),'Complete') == 1
        if (strncmp(SampleCollectionDate(i),'2020-11',7) == 1) || (strncmp(SampleCollectionDate(i),'2020-12',7) == 1)
            data6(kk) = eval(cell2mat(SequenceLength(i)));    
            kk = kk+1;
        end
    end        
end

%%
for i = 1470:1500
    pro_value1(i) = max(size(find(round(data1(:)/20) == i)))/max(size(data1));
    pro_value2(i) = max(size(find(round(data2(:)/20) == i)))/max(size(data2));
    pro_value3(i) = max(size(find(round(data3(:)/20) == i)))/max(size(data3));
    pro_value4(i) = max(size(find(round(data4(:)/20) == i)))/max(size(data4));
    pro_value5(i) = max(size(find(round(data5(:)/20) == i)))/max(size(data5));
    pro_value6(i) = max(size(find(round(data6(:)/20) == i)))/max(size(data6));

end


xxx = [1470:1:1500];
plot(xxx,pro_value1(1470:1500),'r')
hold on
plot(xxx,pro_value2(1470:1500),'g')
hold on
plot(xxx,pro_value3(1470:1500),'b')
hold on
plot(xxx,pro_value4(1470:1500),'k')
hold on
plot(xxx,pro_value5(1470:1500),'c')
hold on
plot(xxx,pro_value6(1470:1500),'y')
hold on



    
