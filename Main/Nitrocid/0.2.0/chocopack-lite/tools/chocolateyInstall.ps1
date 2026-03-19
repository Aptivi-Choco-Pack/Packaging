$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "kslite"
$url        = "https://github.com/Aptivi/Nitrocid/releases/download/v0.2.0.5/0.2.0.5-bin-lite.zip"
$shacheck   = "79A3F35E7CE398C6A972CBF0CED7451B55784AAAE5CFBAA5F138DBBADE4C3D63"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
