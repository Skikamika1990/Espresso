#! /bin/bash
# Docker установка

echo "Open script ..."

curl -fsSL https://get.docker.com -o get-docker.sh && \
sh get-docker.sh && \
rm -rf get-docker.sh
echo "Finish..."

echo "Prepering Docker..."
usermod -aG docker $Skika

systemctl enable docker
systemctl start docker

echo "Downloading docker-compose.yaml..."
curl https://www.espressosys.com/cape/docker-compose.yaml --output docker-compose.yaml
echo "The file was downloaded..."

docker compose pull
docker compose up -d
echo "Docker started..."

echo "Happy End."
