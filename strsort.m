function [b]=strsort(a,seq)

for i=1:1:length(a)
    for j=i+1:1:length(a)-1

        ok=strcmpgt(a{i},a{j});

        if(ok==1)
            temp=a{i};
            a{i}=a{j};
            a{j}=temp;

        end

    end
    
end

if(strcmp(seq,'descend')==1)
    b=flip(a);


elseif(strcmp(seq,'ascend')==1)
    b=a;

end
end

