# Invoke Github hosted powershell script

```powershell
Invoke-Expression "& { $(Invoke-RestMethod https://raw.githubusercontent.com/saikatdas0790/.dotfiles/refs/heads/main/windows/1-bootstrap.ps1) }"
```