const Card = require("../models/card");
const {
  BAD_REQUEST,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
} = require("../utils/errors");

module.exports.getCards = (req, res) => {
  Card.find({})
    .then((cards) => res.send(cards))
    .catch(() =>
      res
        .status(INTERNAL_SERVER_ERROR)
        .send({ message: "Erro interno do servidor" }),
    );
};

module.exports.createCard = (req, res) => {
  const { name, link } = req.body;
  const owner = req.user._id;

  Card.create({ name, link, owner })
    .then((card) => res.status(201).send(card))
    .catch((err) => {
      if (err.name === "ValidationError") {
        return res
          .status(BAD_REQUEST)
          .send({ message: "Dados inválidos ao criar novo cartão" });
      }
      return res
        .status(INTERNAL_SERVER_ERROR)
        .send({ message: "Erro interno do servidor" });
    });
};

module.exports.deleteCard = (req, res) => {
  const { cardId } = req.params;

  Card.findByIdAndDelete(cardId)
    .orFail(() => {
      const error = new Error("Cartão não encontrado");
      error.statusCode = NOT_FOUND;
      throw error;
    })
    .then((card) => res.send(card))
    .catch((err) => {
      if (err.name === "CastError") {
        return res
          .status(BAD_REQUEST)
          .send({ message: "ID de cartão inválido" });
      }
      if (err.statusCode === NOT_FOUND) {
        return res.status(NOT_FOUND).send({ message: err.message });
      }
      return res
        .status(INTERNAL_SERVER_ERROR)
        .send({ message: "Erro interno do servidor" });
    });
};

module.exports.likeCard = (req, res) => {
  const { cardId } = req.params;

  Card.findByIdAndUpdate(
    cardId,
    { $addToSet: { likes: req.user._id } }, // adiciona o _id ao array se ele não estiver lá
    { new: true },
  )
    .orFail(() => {
      const error = new Error("Cartão não encontrado");
      error.statusCode = NOT_FOUND;
      throw error;
    })
    .then((card) => res.send(card))
    .catch((err) => {
      if (err.name === "CastError") {
        return res
          .status(BAD_REQUEST)
          .send({ message: "ID de cartão inválido" });
      }
      if (err.statusCode === NOT_FOUND) {
        return res.status(NOT_FOUND).send({ message: err.message });
      }
      return res
        .status(INTERNAL_SERVER_ERROR)
        .send({ message: "Erro interno do servidor" });
    });
};

module.exports.dislikeCard = (req, res) => {
  const { cardId } = req.params;

  Card.findByIdAndUpdate(
    cardId,
    { $pull: { likes: req.user._id } }, // remove _id do array
    { new: true },
  )
    .orFail(() => {
      const error = new Error("Cartão não encontrado");
      error.statusCode = NOT_FOUND;
      throw error;
    })
    .then((card) => res.send(card))
    .catch((err) => {
      if (err.name === "CastError") {
        return res
          .status(BAD_REQUEST)
          .send({ message: "ID de cartão inválido" });
      }
      if (err.statusCode === NOT_FOUND) {
        return res.status(NOT_FOUND).send({ message: err.message });
      }
      return res
        .status(INTERNAL_SERVER_ERROR)
        .send({ message: "Erro interno do servidor" });
    });
};
