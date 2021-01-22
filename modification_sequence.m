function y = modification_sequence(sequence)
for i = 1:max(size(sequence))
    if strcmp(sequence(i:i+12),'TAATTACTGTCGT') == 1
        k = i;
        break
    end
end
for i = 1:max(size(sequence))
    if strcmp(sequence(i:i+11),'GTGCAGAATGAA') == 1
        kk = i;
        break
    end
end
y = sequence(k:kk);
end