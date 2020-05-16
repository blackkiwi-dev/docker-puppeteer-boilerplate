const express = require('express');
const app = express();

const onError = error => {
  console.log(`# Error
    # Time : ${new Date()}
    # Msg : ${error}`);
};

const onListening = () => {
  console.log(`3000 port server listening!! ${new Date()}`);
};

const server = app.listen(process.env.PORT || 3000, '0.0.0.0');
server.on('error', onError);
server.on('listening', onListening);