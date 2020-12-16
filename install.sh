
# Update and Upgrade
echo Updating && \
sudo apt-get update && \

echo Upgrading && \
sudo DEBIAN_FRONTEND=noninteractive apt -y upgrade && \

# Install Docker
echo Installing Docker && \
sudo apt install docker.io -y && \
sudo systemctl start docker && \
sudo systemctl enable docker && \

# Install Docker Compose
sudo apt install -y docker-compose && \

# Install PowerShell
sudo snap install powershell --classic


# Add Current User to Docker Group
sudo usermod -aG docker $USER && \

# Install Wireguard
sudo apt install wireguard -y && \

# Shutdown
sudo shutdown -r now
