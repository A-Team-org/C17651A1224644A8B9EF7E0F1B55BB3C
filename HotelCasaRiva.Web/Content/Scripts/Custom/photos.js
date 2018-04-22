$(document).on("click", ".sub-title", function () {
    $(this).next('p').slideToggle();
    var iClassName = $(this).children('a').children('i').attr('class');
    if (iClassName == 'fa fa-plus')
        $(this).children('a').children('i').removeClass('fa fa-plus').addClass('fa fa-minus');
    else
        $(this).children('a').children('i').removeClass('fa fa-minus').addClass('fa fa-plus');
});

$(document).on("click", ".title", function () {
    $(this).parent().next().slideToggle();
    var iClassName = $(this).children('a').children('i').attr('class');
    if (iClassName == 'fa fa-plus')
        $(this).children('a').children('i').removeClass('fa fa-plus').addClass('fa fa-minus');
    else
        $(this).children('a').children('i').removeClass('fa fa-minus').addClass('fa fa-plus');
});

