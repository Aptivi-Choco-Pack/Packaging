$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "KS"
$url        = "https://github.com/Aptivi/NitrocidKS/releases/download/v0.0.24.33-beta/0.0.24.33-bin-dotnet.zip"
$shacheck   = "ae7b3684fe31a20d6c49d64a5ae46c240b98f10d88af0a10bf9180dd38c1a0da"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
