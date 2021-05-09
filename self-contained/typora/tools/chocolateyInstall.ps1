$ErrorActionPreference = 'Stop';
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://typora.io/windows/typora-setup-ia32.exe'
$url64          = 'https://typora.io/windows/typora-setup-x64.exe'

$packageArgs = @{
  packageName    = 'typora'
  fileType       = 'EXE'
  url            = $url
  url64          = $url64
  softwareName   = 'Typora*'
  checksum       = '24d35c5574ac2866f4c2737c9f2ae29129daf30ac0ccb8d9779742e1054ec48f'
  checksumType   = 'sha256'
  checksum64     = '7b275b415db53922d5a27c963d00eeb98bc9bd3481d2b0f14bb27016582aa360'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0, 3010, 1641)  
}

Install-ChocolateyPackage @packageArgs