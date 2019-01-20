$(document).ready(function () {
    $('#ajax').on('click', INSERT_AJAX);
    $('#post').on('click', CONSULTA_POST);
    $('#get').on('click', CONSULTA_GET);
    $('#pesquisa').on('keypress', event, CONSULTA_PRESS_GET);

    function INSERT_AJAX() {
        var dados = $('#form_cliente').serialize();
        dados = dados + "&acao=incluir";

        $.ajax({
            url: "../exemplo4/crud.php",
            type: 'POST',
            data: dados,
            beforeSend: function () {
                $('#form_cliente').html("<img src='../img/aguarde.gif'>");
            },
            success: function (retorno) {
                if (retorno == "1") {
                    $('#form_cliente').html("<h3>Inserido com sucesso!</h3>");
                } else {
                    $('#form_cliente').html("<h2>Erro ao inserir dados!</h2>");
                }
            }
        });
    }

    function CONSULTA_POST() {
        $('.post').html("<img src='../img/aguarde.gif'>");

        $.post(
                "../exemplo4/crud.php",
                {acao: "ver"},
                function (retorno) {
                    $('.post').html(retorno);
                }
        );
    }

    function CONSULTA_GET() {
        var valor = $('#pesquisa').val();
        $('.get').html("<img src='../img/aguarde.gif'>");

        $.get(
                "../exemplo4/consulta.php",
                {nome: valor},
                function (retorno) {
                    $('.get').html(retorno);
                }
        );
    }

    function CONSULTA_PRESS_GET() {
        var tecla = event.keyCode;

        if (tecla == 13) {
            CONSULTA_GET();
        }
    }
})
