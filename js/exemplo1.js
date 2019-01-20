$(document).ready(function () {
    $('#ajax').on('click', AJAX);
    $('#get').on('click', GET);
    $('#post').on('click', POST);


    function AJAX() {
        $.ajax({
            url: 'conteudo1.html',
            type: 'GET',
            success: function (retorno) {
                $('#conteudo_ajax').html(retorno);
            }
        });
    }

    function GET() {
        $.get(
                "conteudo1.html",
                function (retorno) {
                    $('#conteudo_get').html(retorno);
                }
        );
    }

    function POST() {
        $.post(
                "conteudo1.html",
                function (retorno) {
                    $('#conteudo_post').html(retorno);
                }
        );
    }
});
