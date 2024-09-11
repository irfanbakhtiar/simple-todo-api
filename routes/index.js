const express = require("express");
const router = express.Router();
const response = require("../config/response");

router.get("/", (req, res) => {
  response(200, "API todo-list", "SUCCESS", res);
});

module.exports = router;
