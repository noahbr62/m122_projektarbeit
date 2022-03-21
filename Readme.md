# Projektarbeit LB2

[[_TOC_]]

# Einleitung

Ihr Lehrer hat die Aufgabe, immer wieder GIT-Repos aller Schüler, bzw. aller Teams anzuschauen. 

Dabei wäre es nützlich, wenn er jeweils die Commits in allen Repos über die Zeit graphisch dargestellt hätte, sodass er gleich sieht welche Teams in den letzten Tagen Änderungen gemacht haben.

## Auftrag

Es sollen 2 Skripts erstellt werden. Das erste Skript soll alle GIT-Repos mit GIT-Kommandos klonen und in einen Verzeichnis ablegen.
Das zweite Skript soll von allen GIT-Repos in diesem Verzeichnis alle Commits auslesen und in einem File speichern.
Ihr Lehrer hat dann ein Skript, das diese graphisch dastellt. Das Resultat sieht dann ungefähr so aus:
    ![Sample Output](images/sample_output.png) 

### Skript 1 

Die Aufgaben des Skripts sind

* Auslesen eines Input Files in welchem die GIT-Urls gespeichert sind.
* Parameter für lokales Verzeichnis soll eingelesen werden.
* Alle GIT-Repos sollen in ein zu definierendes lokales Verzeichnis geklont werden, falls das nicht schon geschehen ist.
* Falls der GIT-Url schon geklont worden ist, soll nur ein git pull ausgeführt werden.

#### Muss-Kritierien
* Mehrere GIT-Repos müssen abgefragt werden können.
* Die GIT-Repo-URLs müssen in einem File als Liste übergeben werden können.
* Lokales Verzeichnis soll per Parameter übergeben werden können.
* Es müssen alle geklonten Git-Repos die nicht mehr gebraucht werden (da sie nicht mehr im input file sind), gelöscht werden.
* Das Logging soll zentral implementiert werden. (D.h. es gibt eine log funktion die von beiden skripts gebraucht wird)
* Es soll ein zentrales Konfigurationsfile erstellt werden, das von beiden Skripts benutzt wird.
* Kommentare von allen wichtigen Programmabschnitten bzw. Funktionen.
* Saubere Fehlerbehandlung, wenn z.B. ein Verzeichnis bzw. File nicht existiert oder lesbar ist.

#### Kann-Kriterien
* Commando-Zeilen Option für Debugging ermöglichen.

### Skript 2 

Die Aufgaben des Skripts sind:

* Von allen GIT-Repos sollen alle Commits ausgelesen und in einem File gespeichert werden. 
* Die folgenden Infos der Commits sollen in diesem File gespeichert werden:
```
GIT-Url,Datum,Commit-Hash,Author
xyz/project_xyz,20220301,5881d25d794106abecd12dcb895780fb5eb2fabf,Sven Meier
xyz/project_xyz,20220301,e1953e50c48b58df1c672fb33cd271b2267b5bc2,Judith Hauri
xyz/project_xyz,20220302,5e4698e80ab6b6202aac60fbee5dd89ea993e1bb,Sven Meier
zyx/project-zxy,20220228,416a111298d1c7ed1315624591ae883fe73154a0,Peter Muster
...
```
Wichtige Details zum Output-Format:

* Die Titelzeile soll genauso aussehen  wie im Beispiel.
* GIT-Urls sollen um https://gitlab.com/ bzw. git@gitlab.com: gekuerzt werden.
* Datum soll genau in der Form YYYYmmdd wobei YYYY=Jahr, mm=Monat, dd=Tag sein.
* Author soll einfach aus dem Git-log übernommen werden.

#### Muss-Kritierien
* Es sollen alle GIT-repos von einem lokalen Verzeichnis ausgelesen werden können.
* Lokales Verzeichnis soll per Parameter uebergeben werden koennen.
* Das Output-Fileformat muss genau der obigen Definition entsprechen.
* Der Output-Filename soll uebergeben werden können.
* Das Logging soll zentral implementiert werden. (D.h. es gibt eine log funktion die von beiden skripts gebraucht wird)
* Es soll ein zentrales Konfigurationsfile erstellt werden, das von beiden Skripts benutzt wird.
* Kommentare von allen wichtigen Programmabschnitten bzw. Funktionen.
* Saubere Fehlerbehandlung, wenn z.B. ein Verzeichnis bzw. File nicht existiert oder lesbar ist.

#### Kann-Kriterien
* Commando-Zeilen Option für Debugging ermöglichen.


## Vorgehen

| Task | Beschreibung | Modus | zu bearbeitende Dokumente |
| - | - | - | - |
| Definition von User Interface | Definieren sie welche Argumente sie den Skripte übergeben werden und dokumentieren sie dies. | Teamarbeit | [Projektdokumenation](docs/Projektdokumentation.md) |
| Activity Diagramm | Zeichnen sie für die beiden Skripts Activity-Diagramme und für den Gesamten Prozess | Teamarbeit |[Projektdokumenation](docs/Projektdokumentation.md) |
| Testfälle erstellen | Beschreiben sie die Testfälle um ihre Skripte zu testen | Teamarbeit |[Testprotokoll](docs/Testprotokoll.md) |
| Definition von Konfigurationdateien | Definieren sie Konfigurationsdateien die beide Skripte benutzen sollen und dokumentieren sie diese. Definieren sie soweit bekannt die Konfigurationsparameter. Erstellen sie erste Sample-Konfigfiles. | Teamarbeit | [Projektdokumenation](docs/Projektdokumentation.md)<br>[Verzeichnes für Konfigfiles](etc) |
| Implementieren | Schreiben sie je eines der beiden Skripte. Passen sie die Sample-Konfiguration Files an falls nötig | Einzelarbeit | [Verzeichnis für Skripts](bin)<br>[Verzeichnes für Konfigfiles](etc)|
| Installationsanleitung | Machen sie eine Anleitung für den Administrator (Installation und Konfiguration des Skripts), d.h. alles was initial einmal gemacht werden muss | Einzelarbeit | [Betriebsdokumenation](docs/Betriebsdokumentation.md) |
| Anwendungsanleitung | Machen sie eine Anleitung für den Administrator oder Benutzer des Skripts mit den wiederkehrenden Tasks | Einzelarbeit | [Betriebsdokumenation](docs/Betriebsdokumentation.md) |
| Testen | Testen sie das Skript ihreres Teammitglieds und füllen das Testprotokoll aus| Einzelarbeit | [Testprotokoll](docs/Testprotokoll.md) |
