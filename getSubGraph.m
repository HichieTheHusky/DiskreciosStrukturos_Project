% funkcija grazina grafa indikuojama virsuniu Vi  

function y = getSubGraph(V, U, Vi, ni)
    if(all(ismember(Vi,V) ~= 1))
        error(message('duotos aibes visos virsunes, neegzistuoja grafe'));
    elseif(any(ismember(Vi,V) ~= 1))
                error(message('duotoje aibeje yra virsuniu, kurios neegzistuoja grafe'));
    end
    newU = [];
    k = 1;
    m = length(U(:, 1));

    for tni = 1:ni
        for BriaunosNr1 = 1:m
            if(Vi(tni) == U(BriaunosNr1))
                if(ismember(U(BriaunosNr1,2),Vi))% perdarytas for ciklas
                    newU = [newU;U(BriaunosNr1,:)];
                    k = k + 1; 
                end
            end
        end
    end
    y = newU;
end