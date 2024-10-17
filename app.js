const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello, this is your microservice running on EC2!');
});

const port = 80; // Use port 80 for HTTP
app.listen(port, () => {
    console.log(`Microservice running on port ${port}`);
});
