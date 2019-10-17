const express = require('express');
const app = express()
const port = 4000

app.get('/', (req, res) => res.send("Hola!"));
app.get('/response', (req, res) => res.send(`Talking to server`));
app.listen(port, () => console.log(`App running on port: ${port}`));