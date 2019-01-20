$(document).ready(function () {
    $('#ajax').on('click', AJAX_UF);
    $('.estado').on('change', AJAX_CIDADE);
    $('#get').on('click', GET_ESTADO);
    $('#post').on('click', POST_CIDADE);

    function AJAX_UF() {
        $.ajax({
            url: "../exemplo3/consulta.php",
            type: "GET",
            data: {acao: 'carregar_uf'},
            beforeSend: function () {
                $('.aguarde').html("<img src='../img/aguarde.gif'>");
            },
            success: function (retorno) {
                $('.estado').html(retorno);
                $('.aguarde').html("");
            }
        });
    }

    function AJAX_CIDADE() {
        var id = $('.estado').val();

        $.ajax({
            url: "../exemplo3/consulta.php",
            type: "GET",
            data: {acao: 'carregar_cidade', id_uf: id},
            beforeSend: function () {
                $('.aguarde').html("<img src='../img/aguarde.gif'>");
            },
            success: function (retorno) {
                $('.cidade').html(retorno);
                $('.aguarde').html("");
            }
        });
    }

    function GET_ESTADO() {
        $('.get').html("<img src='../img/aguarde.gif'>");

        $.get(
                "../exemplo3/consulta.php",
                {acao: 'carregar_lista'},
                function (retorno) {
                    $('.get').html(retorno);
                }
        );
    }

    function POST_CIDADE() {
        $('.post').html("<img src='../img/aguarde.gif'>");

        $.post(
                "../exemplo3/consulta_json.php",
                {acao: 'carregar_json'},
                function (retorno) {
                    var json = $.parseJSON(retorno);
                    var html = "";

                    for (i = 0; i < json.length; i++) {
                        var cidade = json[i].descricao;
                        html = html + "<p>" + cidade + "</p>";
                    }

                    $('.post').html(html);
                }
        );
    }

})
