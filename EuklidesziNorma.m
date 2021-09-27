function result = EuklidesziNorma(v)
%Kiszámolja egy vektor euklidészi normáját
%FIGYELEM! Ez a program egy részprogramja a Normák fõprogramnak.
%Külön is lehet használni, az argumentumba adjunk meg egy vektort!
%(Ezt a Normák fõprogram elvégzi helyettünk, ezért is ajánlatos abból a HUB-ból hívni!)
%-by Pocó
p = input('Kérem adja meg a kitevõt (p)!\n');
result = 0;
for i=1:length(v)
    result = result + v(i)^p;
end
result = result^(1/p);
