# ReadMe: PowerShell File Hash Checker

## Überblick
Dieses PowerShell-Skript ermöglicht es, den Hash-Wert einer Datei zu berechnen und zu überprüfen. Es unterstützt verschiedene Hash-Algorithmen wie MD5, SHA1, SHA256, SHA384 und SHA512. Das Skript kann unter Windows 10 und Windows 11 verwendet werden.

## Vorbereitung
Bevor Sie das Skript ausführen, müssen Sie sicherstellen, dass PowerShell-Skripte auf Ihrem System ausgeführt werden dürfen. Standardmäßig ist dies unter Windows oft deaktiviert.

### Aktivierung der PowerShell-Skriptausführung
1. Öffnen Sie PowerShell mit Administratorrechten.
2. Geben Sie den folgenden Befehl ein, um die Ausführungsrichtlinie zu ändern:
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
   ```
3. Bestätigen Sie die Eingabeaufforderung mit `Ja`.

Sie können die Richtlinie nach Bedarf jederzeit wieder auf "Restricted" zurücksetzen, indem Sie den folgenden Befehl verwenden:
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Restricted
```

## Installation
Speichern Sie das Skript an einem beliebigen Ort auf Ihrem System, z. B. im Ordner `Dokumente` oder auf dem Desktop.

## Ausführung des Skripts
1. Navigieren Sie zum Speicherort des Skripts.
2. Klicken Sie mit der rechten Maustaste auf die Skriptdatei und wählen Sie "Mit PowerShell ausführen" aus.

## Verwendung
1. Nach dem Start des Skripts werden Sie aufgefordert, den zu berechnenden Hash-Wert einzugeben (z. B. MD5, SHA256).
2. Wählen Sie die zu überprüfende Datei in einem Datei-Auswahldialog aus.
3. Das Skript berechnet den Hash-Wert der Datei und zeigt das Ergebnis an.

## Unterstützte Hash-Algorithmen
- MD5
- SHA1
- SHA256
- SHA384
- SHA512

## Fehlerbehebung
- **Keine Datei ausgewählt:** Wenn Sie im Datei-Auswahldialog keine Datei auswählen, wird das Skript beendet.
- **Ungültiger Hash-Algorithmus:** Geben Sie einen der oben genannten Hash-Algorithmen ein.

## Sicherheitshinweis
Stellen Sie sicher, dass Sie Skripte nur von vertrauenswürdigen Quellen ausführen.
