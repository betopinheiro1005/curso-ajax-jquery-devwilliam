$(document).ready(function () {
    $('#ajax').on('click', AJAX);
    $('#get').on('click', GET);
    $('#post').on('click', POST);

    function AJAX() {
        $.ajax({
            url: "header.html",
            type: "POST",
            success: function (retorno) {
                $('.ajax').html(retorno);
            }
        });
    }

    function GET() {
        $.get(
                "lista.html",
                function (result) {
                    $('#lista-times').append(result);
                }
        );
    }

    function POST() {
        $.post(
                "select.html",
                function (retorno) {
                    $('.post').html(retorno);
                }
        );
    }
});
