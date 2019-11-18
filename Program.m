% Bazinio grafu kintamasis
n = 9; % virsuniu skaicius nuo 1 iki n.
V = 1 : n;  % virsuniu sarasas nuo 1 iki n.
U = [ 1 8; 3 7; 5 7; 2 4; 4 6; 6 2 ];   % Briaunu matrica ( ; iskirti stulpeliai )
%U = [ 1 2; 1 3; 1 4; 1 5; 1 6; 1 7; 1 8; 1 9 ];   % Briaunu matrica
%U = [ 1 2; 3 4; 5 4; 7 8; 8 9; 7 9 ];   % Briaunu matrica

% indikuojamo grafo virsunes ir ju skaicius
%Vi = [ 2 4 6]; % jungus
%Vi = [ 5 7 3]; % jungus 
%Vi = [ 2 4 6 9]; % nejungus su jungiu nariu
%Vi = [1 3 4 ]; % nejungus be briaunu
%Vi = [10 11 12]; % duotas poaibis neindukuoja esamo grafo
%Vi = [2 4 6 10 11 12]; % duotas poaibis neindukuoja esamo grafo
ni = size(Vi);
ni = ni(2);

% programos veiskmai
tic
Ui = getSubGraph(V,U,Vi,ni);
arjungus = isConnected(Vi, ni, Ui);
SkaiciavimuTrukme = toc;


% rezultatu spausdinimas
printResults(V, U, Vi, Ui, arjungus,SkaiciavimuTrukme);


