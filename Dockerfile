FROM node:12.14.1-buster

RUN apt-get update && \
    apt-get install -y \
    libpangocairo-1.0-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxi6 \
    libxtst6 \
    libnss3 \
    libcups2 \
    libxss1 \
    libxrandr2 \
    libasound2 \
    libatk1.0-0 \
    libgtk-3-0 \
    libxcb-dri3-0 \
    libdrm2 \
    libxshmfence1 \
    libgbm1 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD ./package.json .
RUN npm install pm2 -g
RUN npm install puppeteer --unsafe-perm=true --allow-root
RUN npm install

# docker build . --tag blackkiwi-puppeteer:[VERSION]
# docker build . --tag blackkiwi-puppeteer:0.0.1
# docker run -p [PORT]:3000 --name [CONTAINER_NAME] blackkiwi-puppeteer:0.0.1 [COMMAND]
# 예) docker run -p 3000:3000 --name second-node blackkiwi-puppeteer:0.0.1 tail -f /dev/null