$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "bassboom"
$url        = "https://github.com/Aptivi/BassBoom/releases/download/v0.2.13.3/0.2.13.3-cli.zip"
$shacheck   = "2477F5418902943ECC5A45B7DDF8BCB66BAEA415FE2F62E6788E1E1DAFA29953"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
