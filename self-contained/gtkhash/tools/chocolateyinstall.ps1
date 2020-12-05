$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tristanheaven/gtkhash/releases/download/v1.4/gtkhash-w32-1.4-1-installer.exe'
$url64      = 'https://github.com/tristanheaven/gtkhash/releases/download/v1.4/gtkhash-w64-1.4-1-installer.exe'

$packageArgs = @{
  packageName   = 'gtkhash'
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'gtkhash*'
  checksum      = 'b1d077d2a373db9dbbac28fcdb4286fb992bd40d1c875179f5c778f89df52c35'
  checksumType  = 'sha256'
  checksum64    = 'e9f8f674c6987f21f9a120fa1e4459931e7842f7adfccb50e9685f4150a5f68c'
  checksumType64= 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
