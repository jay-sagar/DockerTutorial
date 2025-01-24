const express = require("express");
const app = express();

const PORT = process.env.PORT || 8000;

app.get("/", (req, res) => {
  return res.json({ message: "Hello from Nodejs in container v6" });
});

app.listen(PORT, () => console.log(`Server started on PORT:${PORT}`));
