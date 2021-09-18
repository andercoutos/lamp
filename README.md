# Instruções

## Instalando o Docker

```bash
sudo apt install docker.io -y &&
sudo systemctl start docker &&
sudo systemctl enable docker &&
sudo usermod -a -G docker $USER &&
sudo reboot
```

## Criando a imagem e subindo o container

```bash
# criando a imagem
docker build -t lamp .

# subindo o container
docker run --restart=always -dit --name banana -p 80:80 -v /opt/home/www:/var/www -d lamp
docker exec -it banana service apache2 restart
docker exec -it banana service mysql restart

```
