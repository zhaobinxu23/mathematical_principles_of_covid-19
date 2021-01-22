%% 100th
ccc = zeros(200,1);
generation = 50;
size_number = 18590;%% this number could be different, it depends on the result of figure4a
c = 0;
for kk = 1:size_number
       if s(generation,kk).length <29903;
       c = c + 1;
       end
end

for ii = 1:200
for kkk = 1:size_number

    if s(generation,kkk).length == 29904-ii;
        ccc(ii) = ccc(ii)+1;
    end

end
end

%% 200th
ddd = zeros(200,1);
generation = 100;
size_number = 18590;
d = 0;
for kk = 1:size_number
       if s(generation,kk).length <29903;
       d = d + 1;
       end
end
for ii = 1:200
for kkk = 1:size_number
    if s(generation,kkk).length == 29904-ii;
        ddd(ii) = ddd(ii)+1;
    end

end
end

%% 300th
eee = zeros(200,1);
generation = 200;
size_number = 18590;
e = 0;
for kk = 1:size_number
       if s(generation,kk).length <29903;
       e = e + 1;
       end
end
for ii = 1:200
for kkk = 1:size_number
    if s(generation,kkk).length == 29904-ii;
        eee(ii) = eee(ii)+1;
    end

end
end

%% 500th
fff = zeros(200,1);
generation = 300;
size_number = 18590;
f = 0;
for kk = 1:size_number
       if s(generation,kk).length <29903;
       f = f + 1;
       end
end

for ii = 1:200
for kkk = 1:size_number
    if s(generation,kkk).length == 29904-ii;
        fff(ii) = fff(ii)+1;
    end

end
end

%% 750th
ggg = zeros(200,1);
generation = 500;
size_number = 18590;
g = 0;
for kk = 1:size_number
       if s(generation,kk).length <29903;
       g = g + 1;
       end
end

for ii = 1:200
for kkk = 1:size_number
    if s(generation,kkk).length == 29904-ii;
        ggg(ii) = ggg(ii)+1;
    end

end
end

xx = [1:1:200];
plot(xx(1:200),ccc(1:200)/c, 'r');
hold on
plot(xx(1:200),ddd(1:200)/d, 'g');
hold on
plot(xx(1:200),eee(1:200)/e, 'b');
hold on
plot(xx(1:200),fff(1:200)/f, 'k');
hold on
plot(xx(1:200),ggg(1:200)/g, 'c');



