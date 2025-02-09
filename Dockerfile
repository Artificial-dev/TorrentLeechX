FROM ghcr.io/anime-republic/leech:latest

COPY . .

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

RUN chmod +x extract

CMD ["bash","start.sh"]
