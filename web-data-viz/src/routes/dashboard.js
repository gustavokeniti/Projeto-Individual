var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/posicoesFavoritas", function (req, res) {
    dashboardController.posicoesFavoritas(req, res);
});

router.get("/Armadores", function (req, res) {
    dashboardController.quantidadeArmadores(req, res);
});

router.get("/Ala-armadores", function (req, res) {
    dashboardController.quantidadeAlaarmadores(req, res);
});

router.get("/Alas", function (req, res) {
    dashboardController.quantidadeAlas(req, res);
});

router.get("/Ala-pivos", function (req, res) {
    dashboardController.quantidadeAlapivos(req, res);
});

router.get("/Pivos", function (req, res) {
    dashboardController.quantidadePivos(req, res);
});

module.exports = router;