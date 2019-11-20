%metodas spausdinti rezultatus

function printResults(V, U, Vi , Ui, arjungus, SkaiciavimuTrukme)
    % nustatymai grafinei aplinkai
    Vkor = [];
    orgraf = 0;
    arc=0; poz=0; Fontsize=10; lstor=1; spalva='b';
    % spausdinimas
    Ucell = convertMatrixToDrawable(U);
    figure(1)
    title('Duotasis grafas')
    plotGraphVU(V, Ucell, orgraf, arc, Vkor, poz, Fontsize, lstor, spalva);

    if(~(isempty(Ui)))
        Ucelli = convertMatrixToDrawable(Ui);
        figure(2)
        title('Indikuotas pografas')
        plotGraphVU(Vi, Ucelli, orgraf, arc, Vkor, poz, Fontsize, lstor, spalva);
    end
    
    disp('naujas grafikas yra indukuojamas siomis virsunemis : ')
    disp(Vi);
    
    if(arjungus)
        disp('Grafikas yra jungus');
    elseif(isempty(Ui))
        disp('Grafikas neturi briaunu - nera jungus');
    else
        disp('Grafikas nëra jungus');
    end
    
    if(SkaiciavimuTrukme ~= 0)
    disp(' skaiciavimai truko : ');
    disp(SkaiciavimuTrukme);
    end
end