clc
clear
FASTAData = fastaread('sequence_ncbi.fasta');
mark1 = 0;

for i = 1:2255
    for j = i+1:2255
        
    if (max(size(FASTAData(i).Sequence)) == 29782) && (max(size(FASTAData(j).Sequence)) == 29782);
        mark1 = mark1+1;
        new_sequence1 = modification_sequence(FASTAData(i).Sequence);
        new_sequence2 = modification_sequence(FASTAData(j).Sequence);
        dd = nwalign(new_sequence1,new_sequence2);
        

        matrix_29782_29782(mark1) = dd;
        end
        clear dd
    end
    end
 
 %%
 mark1 = 0;

for i = 1:2255
    for j = i+1:2255
        
    if (max(size(FASTAData(i).Sequence)) == 29782) && (max(size(FASTAData(j).Sequence)) == 29903);
        mark1 = mark1+1;
        new_sequence1 = modification_sequence(FASTAData(i).Sequence);
        new_sequence2 = modification_sequence(FASTAData(j).Sequence);
        dd = nwalign(new_sequence1,new_sequence2);
        

        matrix_29782_29903(mark1) = dd;
        end
        clear dd
    end
    end
	
	
	%%
	mark1 = 0;

for i = 1:2255
    for j = i+1:2255
        
    if (max(size(FASTAData(i).Sequence)) == 29903) && (max(size(FASTAData(j).Sequence)) == 29903);
        mark1 = mark1+1;
        new_sequence1 = modification_sequence(FASTAData(i).Sequence);
        new_sequence2 = modification_sequence(FASTAData(j).Sequence);
        dd = nwalign(new_sequence1,new_sequence2);
        

        matrix_29903_29903(mark1) = dd;
        end
        clear dd
    end
    end