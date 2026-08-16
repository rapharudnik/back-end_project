const express = require("express");
const mongoose = require("mongoose");
const usersRouter = require("./routes/users");
const cardsRouter = require("./routes/cards");

const app = express();
const PORT = 3001;

mongoose.connect("mongodb://127.0.0.1:27017/mestodb");

app.use(express.json());

app.use((req, res, next) => {
  req.user = {
    _id: "6a450d93dc0e336cf23e9b68",
  };

  next();
});

app.use(usersRouter);
app.use(cardsRouter);

app.use((req, res) => {
  res.status(404).json({ message: "A solicitação não foi encontrada" });
});

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
