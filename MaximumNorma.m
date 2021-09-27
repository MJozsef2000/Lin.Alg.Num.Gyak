function result  = MaximumNorma(v)
%Kiszámolja egy vektor maximum normáját
%FIGYELEM! Ez a program egy részprogramja a Normák fõprogramnak.
%Külön is lehet használni, az argumentumba adjunk meg egy vektort!
%(Ezt a Normák fõprogram elvégzi helyettünk, ezért is ajánlatos abból a HUB-ból hívni!)
%-by Pocó
max = abs(v(1));
for i=2:length(v)
    if max < abs(v(i))
        max = abs(v(i));
    end
end
result = max;