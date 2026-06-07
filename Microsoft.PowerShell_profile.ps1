Write-Host "Hello mathdaemon, welcome back" -foregroundcolor Green
Write-Host "Use the command: "
Write-Host "  pyenv\Scripts\activate" -foregroundcolor Green
Write-Host "to activate the python virtual env for user-installed modules (including NumPy)"
Write-Host "protect the system python environment! Use the venv" -foregroundcolor Green 

function prompt {

$(if (Test-Path Variable:/PSDebugContext) { '[DBG]: ' }
    else { '' }
  ) + $(Get-Date -DisplayHint Time) + ' ' + $(Get-Location) +
    $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> '
}