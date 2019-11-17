% funkcija grazina grafa indikuojama virsuniu Vi  

function y = getSubGraph(U, Vi, ni)
    newU = [];
    k = 1;
    m = length(U(:, 1));

    for tni = 1:ni
        for BriaunosNr1 = 1:m
            if(Vi(tni) == U(BriaunosNr1))
                for BriaunosNr2 = 1:ni
                    if(Vi(BriaunosNr2) == U(BriaunosNr1,2))
                        newU = [newU;U(BriaunosNr1,:)];
                        k = k + 1; 
                    end
                end
            end
        end
    end
    y = newU;
end