# Todo-List

Simple API Todo-List

## Installation

After clone simple-todo-api

```bash
  cd simple-todo-api
  npm install
  npm run api-service
```

Don't forget to running your MySQL Server.

## API Reference

#### Get all data

```http
  GET /api/todos
```

#### Get data

```http
  GET /api/todos/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `number` | **Required**. Id of item to fetch |

#### Add data

```http
  POST /api/todos/
```

#### Update data

```http
  PUT /api/todos/
```

#### Delete data

```http
  DELETE /api/todos/
```

## Tech Stack

**Server:** Nodejs, Express
