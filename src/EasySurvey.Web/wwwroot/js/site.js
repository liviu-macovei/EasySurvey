// Write your Javascript code.
$(".button").click(function(){
    if($(this).html() == "-"){
        $(this).html("+");
    }
    else{
        $(this).html("-");
    }
    $("."+ $(this).attr("target")).slideToggle();
});