$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "KS"
$url        = "https://github.com/EoflaOE/Kernel-Simulator/releases/download/v0.0.15.9-alpha/0.0.15.9-bin.rar"
$md5check   = "2a4eeabd0f9f42cae12c7dbdb0d94d52"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected MD5 Sum: $md5check"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "md5" -Checksum $md5check