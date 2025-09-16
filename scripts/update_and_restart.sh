#!/bin/bash
# Script to update system and restart Flask + Nginx services

set -e

echo "🔄 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "🔄 Restarting Gunicorn service..."
sudo systemctl restart serverlab

echo "🔄 Restarting Nginx..."
sudo systemctl restart nginx

echo "✅ Update and restart completed successfully."
