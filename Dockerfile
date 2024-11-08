FROM debian:bullseye

RUN apt-get update \
	&& apt-get install -y curl unzip libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 

RUN curl -fsSL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs

RUN mkdir -p /opt/wa-server

WORKDIR /opt/wa-server

RUN npm init -y && npm install @open-wa/wa-automate

COPY server.js server.js

CMD ["node", "server.js"]