# ServerLab Runbook

This runbook documents how to build, run, and maintain the **ServerLab** project.  
It demonstrates Linux + Windows server basics, Flask app hosting, Gunicorn, Nginx reverse proxy, systemd services, and IIS setup.

---

## 1. Linux (Kali VM) — Flask + Gunicorn + Nginx

### Start/Stop Service
```bash
# Reload systemd config if needed
sudo systemctl daemon-reload

# Start service
sudo systemctl start serverlab

# Stop service
sudo systemctl stop serverlab

# Restart service
sudo systemctl restart serverlab

# Check service status
sudo systemctl status serverlab
