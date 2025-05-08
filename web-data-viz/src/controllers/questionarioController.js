var usuarioModel = require("../models/questionarioModel");

function preencherQues(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var idade = req.body.idadeServer;
    var altura = req.body.alturaServer;
    var posicao = req.body.posicaoServer;
    var arremesso = req.body.arremessoServer;
    var passe = req.body.passeServer;
    var drible = req.body.dribleServer;
    var controle = req.body.controleServer;
    var defesa = req.body.defesaServer;
    var fkjogador = req.body.idJogadorVincularServer

    // Faça as validações dos valores
    if (idade == undefined) {
        res.status(400).send("Sua idade está undefined!");
    } else if (altura == undefined) {
        res.status(400).send("Sua altura está undefined!");
    } else if (posicao == undefined) {
        res.status(400).send("Sua posição está undefined!");
    } else if (arremesso == undefined) {
        res.status(400).send("Seu arremesso está undefined!");
    } else if (passe == undefined) {
        res.status(400).send("Seu passe está undefined!");
    } else if (drible == undefined) {
        res.status(400).send("Seu drible está undefined!");
    } else if (controle == undefined) {
        res.status(400).send("Seu controle está undefined!");
    } else if (defesa == undefined) {
        res.status(400).send("Sua defesa está undefined!");
    } else if (fkjogador == undefined) {
        res.status(400).send("Sua fk está undefined!");
    } else {

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        questionarioModel.preencherQues(idade, altura, posicao, arremesso, passe, drible, controle, defesa, fkjogador)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao preencher o questionario! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    preencherQues
}