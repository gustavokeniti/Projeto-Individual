var dashboardModel = require("../models/dashboardModel");

function posicoesFavoritas(req, res) {
    dashboardModel.posicoesFavoritas()
        .then(resultado => res.json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar posições favoritas:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function quantidadeArmadores(req, res) {
    dashboardModel.quantidadeArmadores()
        .then(resultado => res.json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar armadores:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function quantidadeAlaarmadores(req, res) {
    dashboardModel.quantidadeAlaarmadores()
        .then(resultado => res.json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar ala-armadores:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function quantidadeAlas(req, res) {
    dashboardModel.quantidadeAlas()
        .then(resultado => res.json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar alas:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function quantidadeAlapivos(req, res) {
    dashboardModel.quantidadeAlapivos()
        .then(resultado => res.json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar ala-pivôs:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function quantidadePivos(req, res) {
    dashboardModel.quantidadePivos()
        .then(resultado => res.json(resultado))
        .catch(erro => {
            console.log("Erro ao buscar pivôs:", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

module.exports = {
    posicoesFavoritas,
    quantidadeArmadores,
    quantidadeAlaarmadores,
    quantidadeAlas,
    quantidadeAlapivos,
    quantidadePivos
}