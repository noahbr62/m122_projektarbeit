# Betriebsdokumentation
[[_TOC_]]
## Einführungstext 

TODO: In 2-3 Sätzen beschreiben was die Skripte grundsaetzlich tun.

#### Skript 1: git_clone_update_repos script

Dieses skript klont mittels einer externen Liste von Repository-URLs alle angegebenen externen Repos lokal in ein User-definiertes Verzeichnis. Sollte ein Repo schon existieren so wird dieses mittels "git pull" geupdated. Alle lokalen Repositories, die nicht in der Repository-URL-Liste definiert sind, werden entfernt. 

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
Beispiels:
    ./git_clone_update_repos.sh ../etc/ RepoFolder
    
Im pfad "../etc/" liegt das repolist.env, in das Verzeichnis "RepoFolder" werden die Repos geklont.

## Bediensanleitung Benutzer

TODO: Erzeugen der Input-Files beschreiben, falls noetig

TODO: beschreiben des Scriptaufruf

TODO: beschreiben der erzeugt files (falls solche erzeugt werden)

TODO: Lokation von logfiles und bekannte Fehlermeldungen beschreiben.

