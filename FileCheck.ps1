# Checksum Checker in PowerShell

# Funktion zum Auswählen einer Datei
function Select-File {
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    $FileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $FileDialog.Filter = "Alle Dateien (*.*)|*.*"
    if ($FileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
        return $FileDialog.FileName
    } else {
        Write-Host "Keine Datei ausgewählt. Skript beendet."
        exit
    }
}

# Liste der unterstützten Hash-Algorithmen
$Algorithms = @("MD5", "SHA1", "SHA256", "SHA384", "SHA512")

# Benutzer gibt die erwartete Checksum ein
$ExpectedHash = Read-Host "Bitte die erwartete Checksum eingeben"

# Benutzer wählt den Hash-Algorithmus
Write-Host "Verfügbare Algorithmen: $Algorithms"
$Algorithm = Read-Host "Bitte den Algorithmus eingeben (z. B. SHA256)"
if (-not $Algorithms -contains $Algorithm.ToUpper()) {
    Write-Host "Ungültiger Algorithmus. Skript beendet."
    exit
}

# Benutzer wählt die Datei
$FilePath = Select-File

# Berechnung der Checksum
$ActualHash = (Get-FileHash -Path $FilePath -Algorithm $Algorithm).Hash

# Ausgabe der Ergebnisse
Write-Host "`nErgebnisse:"
Write-Host "Erwartete Checksum: $ExpectedHash"
Write-Host "Berechnete Checksum: $ActualHash"

# Überprüfung der Checksum
if ($ExpectedHash.ToUpper() -eq $ActualHash.ToUpper()) {
    Write-Host "`n✅ Die Checksummen stimmen überein!"
} else {
    Write-Host "`n❌ Die Checksummen stimmen nicht überein!"
}

Read-Host

