$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "bassboom"
$url        = "https://github.com/Aptivi/BassBoom/releases/download/v0.2.8/0.2.8-cli.zip"
$shacheck   = "79944A796437445979953EE752471804E6FC186337FB2CD838A092ED67C15236"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
