% pariuosia duota briaunu matrica spausdinimui

function y = convertMatrixToDrawable(U)
m = length(U(:, 1));

Ucell = [];
for BriaunosNr = m:-1:1
    Ucell{BriaunosNr} = U(BriaunosNr, :);
end

y = Ucell;
end