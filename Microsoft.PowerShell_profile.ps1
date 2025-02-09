Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Import-Module posh-git
Import-Module Terminal-Icons
Import-Module PoshColor

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

oh-my-posh init pwsh --config '~/Powershell/themes/powerlevel10k_rainbow.omp.json' | Invoke-Expression

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"

if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module 'C:\Program Files\Microsoft Visual Studio\2022\Community\VC\vcpkg\scripts\posh-vcpkg'
