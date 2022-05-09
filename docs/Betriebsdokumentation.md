# Betriebsdokumentation
[[_TOC_]]
## Einführungstext 

TODO: In 2-3 Sätzen beschreiben was die Skripte grundsaetzlich tun.

#### Skript 1: git_clone_update_repos script

Dieses Skript klont mittels einer externen Liste von Repository-URLs alle angegebenen externen Repos lokal in ein User-definiertes Verzeichnis. Sollte ein Repo schon existieren so wird dieses mittels ```git pull``` geupdated. Alle lokalen Repositories, die nicht in der Repository-URL-Liste definiert sind, werden entfernt. 

#### Skript 2: git_extract_commits script

Dieses Skript liest alle Commits aus, aus den Repositories die im ersten Skript geklont wurden, und loggt diese. Mittels ```git log``` kann man alle Informationen ausgeben, jedoch werden nur Datum, Commit-Hash und Author benötigt. Dank einer Logging-Funktion kann man überprüfen ob Fehler auftauchen.


## Installationsanleitung für Administratoren

### Installation

TODO: Wie ist das skript zu installieren. (z.B. apt-get install ... oder tar xvf .... oder ...)

Da die Skripts in diesem Repo liegen kann man diese das Ganze leicht mit einem 
        
    git clone https://github.com/noahbr62/m122_projektarbeit.git

clonen und bei sich Lokal holen.

### Konfiguration

TODO: Beschreibung der Konfigurationsfiles (Beispiel-Files erstellen im Repo)

TODO: Wie ist ein allfaelliger Cronjob einzurichten

TODO: Wie sind User-Home-Templates einzurichten

#### Skript 1: git_clone_update_repos script

Als externe Datei wird eine Liste mit der Bezeichnung repolist.env benötigt. In dieser wird pro Zeile eine Repo-Url sowie die zukünftige lokale Bezeichnung dieses Repos definiert. 

Beim ausführen des Skripts werden 2 argumente benötigt: der Standort der "repolist.env" und das Zielverzeichnis, in wessen alle Repositories geklont werden.

Das repolist.env file sollte von der Struktur her so aussehen:

        https://github.com/github/training-kit.git training_kit
        https://github.com/github/scientist.git scientist

#### Skript 2: git_extract_commits script

Für das zweite Skript werden keine Konfigurationen benötigt. Zu Beginn hatten wir Probleme mit dem ausführen des Skripts, dieses Problem haben wir behoben in dem wir 'Dos2Unix' installiert haben. Dies kann man leicht installieren mit ```sudo apt install dos2unix```.

## Bediensanleitung Benutzer

TODO: Erzeugen der Input-Files beschreiben, falls noetig

TODO: beschreiben des Scriptaufruf

TODO: beschreiben der erzeugt files (falls solche erzeugt werden)

TODO: Lokation von logfiles und bekannte Fehlermeldungen beschreiben.

#### Skript 1: git_clone_update_repos script

Wie bereits im Installationsabschnitt beschrieben klont man sich zuerst das Projekt an den gewünschten Standort. 

Danach benötigt man das repolist.env-File. Man kann ein neue Liste mit gleicher bezeichnung an einen gewünschten Standort erstellen oder die bereits existierende Datei im etc-Verzeichnis anpassen. Die genaue File-Struktur ist im Konfigurationsabschnitt beschrieben.

Zum ausführen des Scripts werden zwei Commandline-parameter benötigt: der Standort des repolist.env und das Zielverzeichnis der zukünftigen lokalen Repositories.

Beispiel:

      ./git_clone_update_repos.sh ../etc/ RepoFolder
      
In diesem Beispiel holt sich das Skript die Liste, welche im etc-Verzeichnis hinterlegt ist. Alle dort aufgeführten Repositories werden dann ins RepoFolder-Verzeichnis hineingeklont, sofern sie nicht bereits existieren. In diesem Fall werden sie nur wie bereits erwähnt geupdatet.

Alle lokalen Repositories, welche nicht in der Liste definiert sind, werden aus dem angegebenen Folder (in diesem fall "RepoFolder") gelöscht.

Jegliche logs werden direkt neben dem Skript in ein txt file mit dem namen centralLog geschrieben.

Alle Pfade die man dem Skript mitliefert gehen vom Standort des Skripts aus.

#### Skript 2: git_extract_commits script

Das Skript wird per Commandline aufgerufen mit diesem Befehl:
```
./script.bash . /home/michael/Desktop/M122/LB2/gitlog.txt . repositories

#Was die einzelnen Komponenten bedeuten:

'./script.bash' führt das Skript aus.

'/home/michael/Desktop/M122/LB2/gitlog.txt' ist der Pfad in dem das Outputfile gespeichert werden soll von den Commits.

'repositories' ist der Ordner in dem sich die Repositories befinden die im ersten Skript geklont wurden.
```

Falls dies funktioniert hat werden nach dem ausführen 2 Files erstellt
        1. gitlog.txt - Datei mit allen Commits in diesem Format:<Zielverzeichnis,Datum,Commit-Hash,Author>
        2. centralLog.txt - Datei mit den Logs
        
#centralLog.txt
Die Logdatei wird am gleichen Ort gespeichert, in dem das Skript ausgeführt wird. Die meisten Meldungen sind:
        Markup : * Warning: Fehlermeldung falls zum Beispiel kein Repository existiert oder keine Repositories im Repository sind
        * Information: Meldung das Repository vorhanden ist oder GIT Repositories vorhanden sind
        * Success: Erfolgreiches extrahieren der Commits
