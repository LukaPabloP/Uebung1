program Aufgabe2;
{$R+,Q+,X-}
uses
  SysUtils, Math;

var
  Schokolade: byte;
  Gummibaerchen: byte;
  Bonbons: byte;
  Gesmantsueses: byte;
  benoetigteKinder: byte;
  Rest: boolean;
  Restkinder : byte;
  SuessigkeitenVorhanden: longint;
  AlleSuessigkeiten: boolean;
  maximum: integer;
  eindeutig_max_suesses: boolean;
  SuessigkeitenLetztesKind: byte;


const
  Esskapazitaet = 6;


begin
  
  Schokolade := 0;
  
  Writeln('Wie viele Schokoladen haben Sie?');
  readln(Schokolade);
  Gummibaerchen := 0;
  
  Writeln('Wie viele Gummibaerchen haben Sie?');
  readln(Gummibaerchen);
  Bonbons := 0;
  
  Writeln('Wie viele Bonbons haben Sie?');
  readln(Bonbons);

  SuessigkeitenVorhanden := Schokolade * Gummibaerchen * Bonbons;
  Gesmantsueses := Schokolade + Gummibaerchen + Bonbons;
  Allesuessigkeiten := boolean(SuessigkeitenVorhanden);
  Rest := Gesmantsueses mod Esskapazitaet <> 0;
  Restkinder := byte(Rest);


  Writeln('Die Gesamtanzahl der Suessigkeiten ist: ', Gesmantsueses);

  benoetigteKinder := Gesmantsueses div Esskapazitaet + Restkinder;
    Writeln('Es werden insgesammt ', benoetigteKinder, ' Kinder benötigt');
    Writeln('Ist von jeder Süßigkeit mindestens eins vorhanden: ', Allesuessigkeiten);

  Writeln('Gibt es ein Rest: ', Rest);
  Writeln('Die Anzahl der Restkinder ist: ', Restkinder);
 

  SuessigkeitenLetztesKind := (Gesmantsueses mod Esskapazitaet - Esskapazitaet) * byte(Rest) + Esskapazitaet;
    Writeln('Das letzte Kind bekommt ', SuessigkeitenLetztesKind, ' Suessigkeit(en).');



  maximum := max(Schokolade, max(Gummibaerchen, Bonbons));

    eindeutig_max_suesses := byte(schokolade = maximum) + byte(Gummibaerchen = maximum) + byte(Bonbons = maximum) =1;
    writeln;
  Writeln('Gibt eine Süßigkeit mit der eindeutigen Mehrheit: ', eindeutig_max_suesses);

  
  writeln('Gummibaerchen hat die größte Anzahl : ', Gummibaerchen = maximum);
  writeln('Schokoladen hat die größte Anzahl : ', schokolade = maximum);
  writeln('Bonbons hat die größte Anzahl : ', bonbons = maximum);

  writeln('Gummibaerchen hat die kleinste Anzahl : ', Gummibaerchen = Min(schokolade, Min(Gummibaerchen, bonbons)));
  writeln('Schokoladen hat die kleinste Anzahl : ', schokolade = Min(schokolade, Min(Gummibaerchen, bonbons)));
  writeln('Bonbons hat die kleinste Anzahl : ', bonbons = Min(schokolade, Min(Gummibaerchen, bonbons)));


end.