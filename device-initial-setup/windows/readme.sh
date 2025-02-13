# Invoke Github hosted powershell script

```powershell
Invoke-Expression "& { $(Invoke-RestMethod https://raw.githubusercontent.com/saikatdas0790/public/refs/heads/main/device-initial-setup/windows/1-bootstrap.ps1) }"
```