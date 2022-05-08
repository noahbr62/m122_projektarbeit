Skript 1

| Testfall | Testbeschreibung | Testdaten | erwartetes Testresultat | erhaltenes Testresultat | Tester | Testdatum und Teststatus |
|  - | - | - | - | - | - | - |
| Erstmaliger Aufruf | Das Skript soll mit einem input file aufgerufen werden, in welchem nur verfügbare Git-URLs sind. Diese sollen in ein noch nicht existierendes Verzeichnis geklont werden:<pre>skript1.bash repolist.txt /tmp/myrepos</pre> | repolist.txt mit folgendem Inhalt:<pre>https://gitlab.com/armindoerzbachtbz/m122_praxisarbeit<br>https://gitlab.com/wapdc/InfoSearch/Project-2017</pre> | Verzeichnis wird erstellt und alle Repos werden darin geklont | | | |
| Inkorrekter Aufruf | Das Skript soll ohne jegliche Parameter ausgeführt werden | - | Skript bricht ab und verlangt beide Parameter als Argument | | | |
| Fehlerhaftes Listenargument | Das Skript soll mit einer Liste arbeiten, welche eine inkorrekte Zeile definiert hat | repolist.txt mit folgendem Inhalt:<pre>falscher Eintrag<br>https://gitlab.com/wapdc/InfoSearch/Project-2017</pre> | Skript ignoriert den falschen Eintrag und behandelt die restlichen Zeilen | | | |
| Fehlerhafte Repository-URL | Das Skript soll mit einer Liste arbeiten, welche einen Eintrag hat, in dem die Repository-URL auf ein Privates Repo zeigt | repolist.txt mit folgendem Inhalt:<pre>git@gitlab.com:henry.irving2001/m122_praxisarbeit.git Henry_Irving_Justin_Feliz<br>https://gitlab.com/wapdc/InfoSearch/Project-2017</pre> | Skript ignoriert den falschen Eintrag und behandelt die restlichen Zeilen | | | |

Skript 2

| Testfall | Testbeschreibung | Testdaten | erwartetes Testresultat | erhaltenes Testresultat | Tester | Testdatum und Teststatus |
|  - | - | - | - | - | - | - |
| Erstmaliger Aufruf | Das Skript soll mit einem Verzeichnis als parameter augerufen werden in welchem 2 Repos sind:<pre> skript2.bash /tmp/myrepos /tmp/commits.csv</pre> | Verzeichnis mit den GIT-Repos die mit dem Skript 1 geklont wurden:<pre>/tmp/myrepos</pre> | Alle Repos aus /tmp/myrepos werden gelesen und ein File /tmp/commits.csv erstellt mit allen Commits beider Repos | | | |
