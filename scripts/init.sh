apt-get update

(echo "Y") | apt-get install libpangocairo-1.0-0 libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxi6 libxtst6 libnss3 libcups2 libxss1 libxrandr2 libgconf2-4 libasound2 libatk1.0-0 libgtk-3-0
npm install pm2 -g
npm install puppeteer --unsafe-perm=true --allow-root
npm install
pm2-runtime app.js --output ./out.log --error ./err.log