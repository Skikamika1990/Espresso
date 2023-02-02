# Script
Espresso
echo "Start..."
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
rm -rf get-docker.sh
echo "Ok..."

echo "Prepering Docker..."
usermod -a -G docker Skika

systemctl enable docker
systemctl start docker

echo "Downloading docker-compose.yaml..."
curl https://www.espressosys.com/cape/docker-compose.yaml --output docker-compose.yaml
echo "The file was downloaded..."

docker compose pull
docker compose up -d
echo "Docker started..."

echo "Script finished."
