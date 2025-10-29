FROM n8nio/n8n:latest

# Python kütüphanelerini yükle
USER root
RUN apt-get update && apt-get install -y python3 python3-pip && pip3 install -r /data/requirements.txt

# n8n’i çalıştır
USER node
CMD ["n8n", "start"]
