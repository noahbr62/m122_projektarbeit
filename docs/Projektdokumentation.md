# Projekt Dokumentation

[[_TOC_]]

## Lösungsdesign
Anhand der Analyse wurde folgendes Lösungsdesign entworfen.

### Aufruf der Skripte

**Skript 1:**

Skript 1 wird einfach von der Commandline ausgeführt. Dabei liefert man dort zusätzlich noch das Base-Verzeichnis zum abspeichern aller Repositories mit. Auch benötigt das Skript ein Config-File sowie eine Liste mit allen zu holenden Repositories

**Skript 2:**

Skript 2 wird auch per Commandline ausgeführt. Das File soll einfach aufgerufen werden und dann läuft das Skript automatisch durch alle GIT-Repos durch.

### Ablauf der Automation

TODO: Hier kommt ihr UML-Activity Diagramm
Script 1: 
![Untitled Diagram drawio](https://user-images.githubusercontent.com/58325460/161236807-0dbeb401-b1a9-4d1a-89e2-4e95d6129856.png)


Skript 2:

![Script2](https://github.com/noahbr62/m122_projektarbeit/blob/master/images/script2.png)
### Konfigurationsdateien

Das Skript 1 benötigt nur eine Liste mit allen gewünschten Repositories sowie lokalen Bezeichnungen.

Beim Skript 2 wird keine Konfigurationsdatei benötigt, denn die Parameter werden per Commandline übergeben.

## Abgrenzungen zum Lösungsdesign

TODO: Nachdem das Programm verwirklicht wurde hier die unterschiede von der Implemenatino zum Lösungsdesign beschreiben (was wurde anders gemacht, was wurde nicht gemacht, was wurde zusaetzlich gemacht)
