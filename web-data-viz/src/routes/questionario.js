var express = require("express");
var router = express.Router();

var questionarioController = require("../controllers/questionarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/preencherQues", function (req, res) {
    questionarioController.preencherQues(req, res);
})

module.exports = router;