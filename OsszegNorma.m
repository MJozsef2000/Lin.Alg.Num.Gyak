function result = OsszegNorma(v)
%Kiszámolja egy vektor összegnormálját
%FIGYELEM! Ez a program egy részprogramja a Normák fõprogramnak.
%Külön is lehet használni, az argumentumba adjunk meg egy vektort!
%(Ezt a Normák fõprogram elvégzi helyettünk, ezért is ajánlatos abból a HUB-ból hívni!)
%-by Pocó
result = 0;
for i=1:length(v)
    result = result + abs(v(i));
end