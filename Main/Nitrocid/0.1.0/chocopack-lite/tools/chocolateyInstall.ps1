$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "kslite"
$url        = "https://github.com/Aptivi/Nitrocid/releases/download/v0.1.0.51/0.1.0.51-bin-lite.zip"
$shacheck   = "360FA00EBE82C62CEE1FBC7F20B01C7C72C42213F2806335B746D2E0925FA9DA"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"
Write-Output "<+> Configuration will be automatically generated on startup."

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
