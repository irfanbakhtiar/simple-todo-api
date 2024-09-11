const express = require("express");
const app = express();
const PORT = 3000;
const cors = require("cors");
const bodyParser = require("body-parser");
const response = require("./config/response");
const index = require("./routes");
const todos = require("./routes/todos");

// library
app.use(bodyParser.json());
app.use(cors());

// routes
app.use("/api", index);
app.use("/api/todos", todos);
app.get("*", (req, res) => {
  response(404, "API Not Found", "ERROR", res);
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
