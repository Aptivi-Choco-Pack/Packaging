$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "kslite"
$url        = "https://github.com/Aptivi/Nitrocid/releases/download/v0.1.0.59/0.1.0.59-bin-lite.zip"
$shacheck   = "4d444b51bf0b74403dbdbc677e47082a2188ce181cc667c1bfd88e71a81a12b4"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
