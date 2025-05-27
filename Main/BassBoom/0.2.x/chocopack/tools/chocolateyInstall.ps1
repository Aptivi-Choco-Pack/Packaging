$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pkgName    = "bassboom"
$url        = "https://github.com/Aptivi/BassBoom/releases/download/v0.2.9/0.2.9-cli.zip"
$shacheck   = "9683A73DEB73281486F33DD994AF341562015715709C32E385010835D61A65A7"

Write-Output "<*>: for assumptions, <+> for progress, <-> for error"
Write-Output "<*> Installation directory: $toolsDir"
Write-Output "<*> Package Name: $pkgName"
Write-Output "<*> URL: $url"
Write-Output "<*> Expected SHA256 Sum: $shacheck"

Install-ChocolateyZipPackage $pkgName $url $toolsDir -ChecksumType "sha256" -Checksum $shacheck
