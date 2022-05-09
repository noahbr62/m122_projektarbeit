Skript 1

| Testfall | Testbeschreibung | Testdaten | erwartetes Testresultat | erhaltenes Testresultat | Tester | Testdatum und Teststatus |
|  - | - | - | - | - | - | - |
| Erstmaliger Aufruf | Das Skript soll mit einem input file aufgerufen werden, in welchem nur verfügbare Git-URLs sind. Diese sollen in ein noch nicht existierendes Verzeichnis geklont werden:<pre>skript1.bash repolist.txt /tmp/myrepos</pre> | repolist.txt mit folgendem Inhalt:<pre>https://gitlab.com/armindoerzbachtbz/m122_praxisarbeit<br>https://gitlab.com/wapdc/InfoSearch/Project-2017</pre> | Verzeichnis wird erstellt und alle Repos werden darin geklont | | | |
| Inkorrekter Aufruf | Das Skript soll ohne jegliche Parameter ausgeführt werden | - | Skript bricht ab und verlangt Parameter als Argument | | | |
| Fehlerhaftes Listenargument | Das Skript soll mit einer Liste arbeiten, welche eine inkorrekte Zeile definiert hat | repolist.txt mit folgendem Inhalt:<pre>falscher Eintrag<br>https://gitlab.com/wapdc/InfoSearch/Project-2017</pre> | Skript ignoriert den falschen Eintrag und behandelt die restlichen Zeilen | | | |
| Fehlerhafte Repository-URL | Das Skript soll mit einer Liste arbeiten, welche einen Eintrag hat, in dem die Repository-URL auf ein Privates Repo zeigt | repolist.txt mit folgendem Inhalt:<pre>git@gitlab.com:henry.irving2001/m122_praxisarbeit.git Henry_Irving_Justin_Feliz<br>https://gitlab.com/wapdc/InfoSearch/Project-2017</pre> | Skript ignoriert den falschen Eintrag und behandelt die restlichen Zeilen | | | |
| Alte Repos behandeln | Es soll Lokal ein Repository haben, welches nicht mehr in der Liste definiert ist | repolist.txt mit folgendem Inhalt:<pre>https://github.com/github/training-kit.git training_kit<br>https://github.com/github/scientist.git scientist</pre> | Skript löscht das veraltete lokale Repository und verhält sich ansonsten wie erwartet | | | |

Skript 2

| Testfall | Testbeschreibung | Testdaten | erwartetes Testresultat | erhaltenes Testresultat | Tester | Testdatum und Teststatus |
|  - | - | - | - | - | - | - |
| Erstmaliger Aufruf | Das Skript soll per Commandline mit den Parametern ./script.bash . BASEDIR . OUTPUTFILE.txt | Parameter mit folgendem Inhalt pre>./script.bash . /home/michael/Desktop/M122/LB2/gitlog.txt . repositories</pre> | Skript wird ausgeführt. Outputfile erstellt | Das Outputfile wird erstellt, Logfile auch. | Noah Barth | 08.05.22 |
| Kein Repository | Das Skript soll eine Fehlermeldung ausgeben, falls kein Repository vorhanden ist | Commandline Parameter repositories | Skript gibt eine Fehlermeldung aus | Skript gibt eine Fehlermeldung aus, loggt diese und erstellt das Repository | Noah Barth | 08.05.22 |
| Keine GIT Repositories im Repository | Das Skript soll eine Fehlermeldung ausgeben, falls keine GIT Repositories vorhanden sind | Repository vorhanden | Skript gibt eine Fehlermeldung aus | Skript gibt eine Fehlermeldung aus, dass keine GIT Repo's vorhanden sind, loggt diese | Noah Barth | 08.05.22 |
| Kein Pfad für gitlog.txt | Das Skript soll das Outputfile automatisch im Ordner ablegen in dem sich das Skript befindet. | Ausführen von <pre>script.bash</pre> per Commandline mit keinem Pfad | Skript legt dieses am gleichen Ort ab wie das Skript selber | Skript legt dieses am selben Ort ab, jedoch werden die Commits nicht richtig ausgelesen | Noah Barth | 08.05.22 |
