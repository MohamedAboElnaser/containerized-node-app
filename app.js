const express = require("express");

const app = express();

app.get("/*", (req, res) => {
    res.json({
        message: `Welcome to our api`,
        url:req.url
    });
});

module.exports=app;