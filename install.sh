
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
# Download the Microsoft repository GPG keys
sudo wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb && \

# Update the list of products
sudo apt install software-properties-common -y && \
sudo apt-get update && \

# Enable the "universe" repositories
sudo add-apt-repository universe && \

# Install PowerShell
sudo apt-get install -y powershell && \

# Install Gluster
echo Installing Gluster && \
sudo apt-get install -y software-properties-common && \
sudo add-apt-repository ppa:gluster/glusterfs-7 && \
sudo apt-get -y update && \
sudo apt-get install -y glusterfs-server && \

# Install Python
#sudo apt install python -y && \

# Add Current User to Docker Group
sudo usermod -aG docker $SUDO_USER && \

# Add Sync
sudo mkdir ~/sync && \
sudo mv docker-compose.yml ~/sync/ && \

$ Install Digital Ocean CLI
sudo snap install doctl && \

# Shutdown
sudo shutdown -r now
