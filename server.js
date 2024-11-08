const { create, Client } = require('@open-wa/wa-automate');
const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

let client;

create().then((c) => {
    client = c;
    console.log('WhatsApp Client is ready!');
});

app.post('/send-message', (req, res) => {
    const { number, message } = req.body;
    client.sendText(number, message)
        .then((result) => {
            res.json({ success: true, result });
        })
        .catch((error) => {
            res.json({ success: false, error });
        });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
