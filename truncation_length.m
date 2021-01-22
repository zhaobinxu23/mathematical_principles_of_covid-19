function y = truncation_length(x)
if round(x/1)  == 29903;%% when virus length = 29903bp, slow corrosion
    y = fix(abs(normrnd(0,10))/11);
else
    if round(x/1)  == 29782;%% when virus length = 29782bp, slower corrosion
        y = fix(abs(normrnd(0,10))/15);
    else
        y = fix(abs(normrnd(0,10))/2);%% when virus length = other length, fast corrosion
    end
end
end

    
