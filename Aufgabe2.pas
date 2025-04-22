program Aufgabe2;
{$R+,Q+,X-}
uses
  SysUtils, Math;

var
  Suessigkeit1: byte;
  Suessigkeit2: byte;
  Suessigkeit3: byte;
  Gesmantsueses: byte;
  benoetigteKinder: byte;
  Rest: boolean;
  Restkinder : byte;
  SuessigkeitenVorhanden: longint;
  Allesuessigkeiten: boolean;
  maximum: integer;
  eindeutig_max_suesses: boolean;
  SuessigkeitenLetztesKind: byte;


const
  ESSKAPAZITAET = 6;

  NAME_SCHOKOLADE = 'Schokolade';     // z.B. "Schokohasen"
  NAME_GUMMIBAERCHEN = 'Gummibaerchen'; // z.B. "Lakritzschnecken"
  NAME_BONBONS = 'Bonbons';             // z.B. "Kaubonbons"

begin
  // Eingabe der Anzahl jeder Süßigkeit
  Writeln('Wie viele ', NAME_SCHOKOLADE, ' haben Sie?');
  readln(Suessigkeit1);

  Writeln('Wie viele ', NAME_GUMMIBAERCHEN, ' haben Sie?');
  readln(Suessigkeit2);

  Writeln('Wie viele ', NAME_BONBONS, ' haben Sie?');
  readln(Suessigkeit3);

  // Prüfung, ob jede Süßigkeit mindestens einmal vorhanden ist
  SuessigkeitenVorhanden := Suessigkeit1 * Suessigkeit2 * Suessigkeit3;
  Gesmantsueses := Suessigkeit1 + Suessigkeit2 + Suessigkeit3;
  Allesuessigkeiten := boolean(SuessigkeitenVorhanden);

  // Prüfung auf Restverteilung
  Rest := Gesmantsueses mod ESSKAPAZITAET <> 0;
  Restkinder := byte(Rest);

  Writeln('Die Gesamtanzahl der Suessigkeiten ist: ', Gesmantsueses);
  benoetigteKinder := Gesmantsueses div ESSKAPAZITAET + Restkinder;

  Writeln('Es werden insgesamt ', benoetigteKinder, ' Kinder benötigt');
  Writeln('Ist von jeder Süßigkeit mindestens eins vorhanden: ', Allesuessigkeiten);
  Writeln('Gibt es einen Rest: ', Rest);
  Writeln('Die Anzahl der Restkinder ist: ', Restkinder);

  // Berechnung, wie viele Süßigkeiten das letzte Kind bekommt
  SuessigkeitenLetztesKind := (Gesmantsueses mod ESSKAPAZITAET - ESSKAPAZITAET) * byte(Rest) + ESSKAPAZITAET;
  Writeln('Das letzte Kind bekommt ', SuessigkeitenLetztesKind, ' Suessigkeit(en).');

  // Bestimmen, welche Süßigkeit am meisten vorhanden ist
  maximum := max(Suessigkeit1, max(Suessigkeit2, Suessigkeit3));
  eindeutig_max_suesses := byte(Suessigkeit1 = maximum) +
                           byte(Suessigkeit2 = maximum) +
                           byte(Suessigkeit3 = maximum) = 1;

  Writeln;
  Writeln('Gibt es eine Süßigkeit mit der eindeutigen Mehrheit: ', eindeutig_max_suesses);

  // Ausgabe, welche Süßigkeit am meisten vorhanden ist
  Writeln(NAME_GUMMIBAERCHEN, ' hat die größte Anzahl: ', Suessigkeit2 = maximum);
  Writeln(NAME_SCHOKOLADE, ' hat die größte Anzahl: ', Suessigkeit1 = maximum);
  Writeln(NAME_BONBONS, ' hat die größte Anzahl: ', Suessigkeit3 = maximum);

  // Ausgabe, welche Süßigkeit am wenigsten vorhanden ist
  Writeln(NAME_GUMMIBAERCHEN, ' hat die kleinste Anzahl: ', Suessigkeit2 = Min(Suessigkeit1, Min(Suessigkeit2, Suessigkeit3)));
  Writeln(NAME_SCHOKOLADE, ' hat die kleinste Anzahl: ', Suessigkeit1 = Min(Suessigkeit1, Min(Suessigkeit2, Suessigkeit3)));
  Writeln(NAME_BONBONS, ' hat die kleinste Anzahl: ', Suessigkeit3 = Min(Suessigkeit1, Min(Suessigkeit2, Suessigkeit3)));
end.
