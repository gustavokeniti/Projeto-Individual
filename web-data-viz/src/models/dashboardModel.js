var database = require("../database/config")

function posicoesFavoritas() {
    const instrucaoSql = `
        SELECT posicao, COUNT(*) AS total
        FROM skill
        INNER JOIN jogador ON idjogador = fkjogador
        GROUP BY posicao;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function quantidadeArmadores() {
    const instrucaoSql = `
        SELECT arremesso, passe, drible, controle, defesa, Mediageral
        FROM skill
        WHERE posicao = 'Armador';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function quantidadeAlaarmadores() {
    const instrucaoSql = `
        SELECT arremesso, passe, drible, controle, defesa, Mediageral
        FROM skill
        WHERE posicao = 'Ala-armador';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function quantidadeAlas() {
    const instrucaoSql = `
        SELECT arremesso, passe, drible, controle, defesa, Mediageral
        FROM skill
        WHERE posicao = 'Ala';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function quantidadeAlapivos() {
    const instrucaoSql = `
        SELECT arremesso, passe, drible, controle, defesa, Mediageral
        FROM skill
        WHERE posicao = 'Ala-pivô';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function quantidadePivos() {
    const instrucaoSql = `
        SELECT arremesso, passe, drible, controle, defesa, Mediageral
        FROM skill
        WHERE posicao = 'Pivô';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    posicoesFavoritas,
    quantidadeArmadores,
    quantidadeAlaarmadores,
    quantidadeAlas,
    quantidadeAlapivos,
    quantidadePivos
};