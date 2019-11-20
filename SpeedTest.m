% Comparable matlab function subgraph

% Bazinio grafu kintamasis
n = 9; % virsuniu skaicius nuo 1 iki n.
V = 1 : n;  % virsuniu sarasas nuo 1 iki n.
U = [ 1 8; 3 7; 5 7; 2 4; 4 6; 6 2 ];   % Briaunu matrica ( ; iskirti stulpeliai )

% indikuojamo grafo virsunes ir ju skaicius
%Vi = [ 2 4 6]; % jungus
Vi = [ 5 7 3]; % jungus 
ni = size(Vi);
ni = ni(2);

% programos veiskmai
tic
Ui = getSubGraph(V,U,Vi,ni);
SkaiciavimuTrukme1 = toc;

tic
arjungus = isConnected(Vi, ni, Ui);
SkaiciavimuTrukme3 = toc;


% programos veikimas su default sub
A = [
 0 0 0 0 0 0 0 1 0
 0 0 0 1 0 1 0 0 0
 0 0 0 0 0 0 1 0 0
 0 1 0 0 0 1 0 0 0
 0 0 0 0 0 0 1 0 0
 0 1 0 1 0 0 0 0 0
 0 0 1 0 1 0 0 0 0
 1 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0
];
G = graph(A);
%figure(5);
%plot(G)

tic
H = subgraph(G,Vi);
SkaiciavimuTrukme2 = toc;
%figure(4)
%plot(H)

%graphconncomp(Gs, 'Weak', true)
tic
ats = conncomp(H);
SkaiciavimuTrukme4 = toc;

%if(all(ats)==1)
%    disp('jungus = true');
%else
%    disp('jungus = false');
%end
% rezultatu spausdinimas
%printResults(V, U, Vi, Ui, arjungus,0);

disp(newline);
disp('testavimai pirma orginalus paskui matlab');
disp('visi resultatai padauginti is 10000');
disp('subgraph');
disp(SkaiciavimuTrukme1*10000);
disp(SkaiciavimuTrukme2*10000);
disp('connected');
disp(SkaiciavimuTrukme3*10000);
disp(SkaiciavimuTrukme4*10000);




