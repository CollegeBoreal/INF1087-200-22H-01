# L'exercice se porte sur l'installation de node.js
---------------------------------------------------------------------
Nous allons prendre l'exercice sur le site de nodejs.org

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/


## créatoion de l'image
Il faut créer package.json
```
{
  "name": "docker_web_app",
  "version": "1.0.0",
  "description": "Node.js on Docker",
  "author": "First Last <first.last@example.com>",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  },
  "dependencies": {
    "express": "^4.16.1"
  }
}

```
ensuite on utilise npm install
et le package-lock.json s'installe sur le systéme

Ensuite créer le fichier server.js:
```
'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
```

Il faut ensuite créer un fichier .dockerignore:

```
node_modules
npm-debug.log
```



## execution du fichier

<img src="https://github.com/CollegeBoreal/INF1087-200-21H-02/blob/main/2.Docker/300111824/IMAGES/npm1.PNG" width="650">

<img src="https://github.com/CollegeBoreal/INF1087-200-21H-02/blob/main/2.Docker/300111824/IMAGES/run1.PNG" width="650">

<img src="https://github.com/CollegeBoreal/INF1087-200-21H-02/blob/main/2.Docker/300111824/IMAGES/calling.PNG" width="650">

## résulat sur page web

<img src="https://github.com/CollegeBoreal/INF1087-200-21H-02/blob/main/2.Docker/300111824/IMAGES/hello.PNG" width="650">
