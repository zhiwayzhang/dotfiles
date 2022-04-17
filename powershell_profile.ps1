New-Alias -Name vim -Value nvim
Import-Module oh-my-posh
Set-PoshPrompt -Theme robbyrussel
Import-Module posh-git
$env:POSH_GIT_ENABLED = $true
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
