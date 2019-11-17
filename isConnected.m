% funkcija grazina true jei grafas yra jungus ir false jei nejungus

function y = isConnected(V, n, U)
    arJungus = false;
    if(~(isempty(U)))
        m = length(U(:, 1));
        JungiosAukstines = zeros(1, n);

        for tn = 1:n
            for BriaunosNr = 1:m
                if(U(BriaunosNr,1) == V(tn) || U(BriaunosNr,2) == V(tn))
                    JungiosAukstines(tn) = 1;
                end       
            end
        end
    %    disp(JungiosAukstines); % testavimas
        if(all(JungiosAukstines == 1))
            arJungus = true;
        end
    end
    y = arJungus;
end