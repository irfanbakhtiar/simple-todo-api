const express = require("express");
const router = express.Router();
const response = require("../config/response");
const db = require("../config/connection");

// show all data
router.get("/", (req, res) => {
  const sql = "SELECT * FROM todos";
  db.query(sql, (err, datas) => {
    if (err) throw err;
    response(200, datas, "All todos successfully loaded", res);
  });
});

// show data by id
router.get("/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM todos WHERE id = ${id}`;
  db.query(sql, (err, datas) => {
    if (datas.length <= 0) {
      response(404, "Data Not Found!", "Data Not Found!", res);
    } else {
      response(200, datas, `Data ${id} successfully loaded`, res);
    }
  });
});

// add data
router.post("/", (req, res) => {
  const { task, description, status, priority, due_date } = req.body;
  const sql = `INSERT INTO todos (task, description, status, priority, due_date) VALUES ("${task}", "${description}", "${status}", "${priority}", "${due_date}")`;
  db.query(sql, (err, datas) => {
    if (err) response(500, "Invalid", "Error", res);
    if (datas?.affectedRows) {
      const status = { isSuccess: datas.affectedRows, id: datas.insertId };
      response(200, status, "Data successfully added", res);
    }
  });
});

// update data
router.put("/", (req, res) => {
  const { id, task, description, status, priority, due_date } = req.body;
  const sql = `UPDATE todos SET task = "${task}", description = "${description}", status = "${status}", priority = "${priority}", due_date = "${due_date}" WHERE id = ${id}`;
  db.query(sql, (err, datas) => {
    if (err) response(500, "Invalid", "Error", res);
    if (datas?.affectedRows) {
      const status = {
        isSuccess: datas.affectedRows,
        message: datas.message,
      };
      response(200, status, "Data successfully updated", res);
    } else {
      response(404, "Todos not found", "Error", res);
    }
  });
});

// delete data
router.delete("/", (req, res) => {
  const { id } = req.body;
  const sql = `DELETE FROM todos WHERE id = ${id}`;
  db.query(sql, (err, datas) => {
    if (err) response(500, "Invalid", "Error", res);
    if (datas?.affectedRows) {
      const status = {
        isDeleted: datas.affectedRows,
      };
      response(200, status, "Data successfully deleted", res);
    } else {
      response(404, "Todos not found", "Error", res);
    }
  });
});

module.exports = router;
