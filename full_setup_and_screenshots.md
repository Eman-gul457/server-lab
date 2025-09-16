############################################
# 🐧 Linux Setup (Kali) - Bash
############################################

# 1. Start Flask app via Gunicorn (Screenshot: kali1.png)
curl -i http://127.0.0.1:8000/

# 2. Test app through Nginx reverse proxy (Screenshot: kali2.png)
curl -i http://127.0.0.1/

# 3. Browser access (Screenshot: kali3.png)
# 👉 Open browser manually and visit http://127.0.0.1/

# 4. Check systemd service (Screenshot: kali4.png)
sudo systemctl status serverlab

# 5. Test and reload Nginx (Screenshot: kali5.png)
sudo nginx -t
sudo systemctl reload nginx


############################################
# 🪟 Windows Setup (IIS) - PowerShell
############################################
# Save the below as full_setup.ps1 and run in PowerShell as Administrator
############################################

# 1. Install IIS features (Screenshot: win1.png)
DISM /Online /Enable-Feature /FeatureName:IIS-ManagementConsole /All /NoRestart

# 2. Verify installed features (Screenshot: win2.png)
Get-WindowsFeature | Where Installed

# 3. Create IIS site (Screenshot: win3.png)
appcmd add site /name:"ServerLab" /bindings:"https/*:443:" /physicalPath:"C:\inetpub\wwwroot"

# 4. Create Application Pool (Screenshot: win4.png)
appcmd add apppool /name:"ServerLabAppPool"

# 5. Show HTTPS bindings (Screenshot: win5.png)
netsh http show sslcert

# 6. Open IIS Manager manually (Screenshot: win6.png)
# 👉 IIS Manager → Sites → Bindings

# 7. Add firewall rule (Screenshot: win7.png)
New-NetFirewallRule -DisplayName "Allow HTTPS" -Direction Inbound -Protocol TCP -LocalPort 443 -Action Allow

# 8. Run automation script (Screenshot: win8.png)
.\create_user_and_restart_iis.ps1

# 9. Verify HTTPS bindings again (Screenshot: win9.png)
netsh http show sslcert

# 10. Open browser manually (Screenshot: win10.png)
# 👉 Navigate to https://localhost
