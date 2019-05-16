(function () {
    var $btnTop = $('.top');
    $(window).on('scroll', function () {
        // если юзер проскролил 20 пикселей. то кнопка появится
        if ($(window).scrollTop() >= 20){
            $btnTop.fadeIn(1000);
        }else {
            $btnTop.fadeOut(1000);
        }
    });

    $btnTop.click(function () {
        $('html,body').animate({scrollTop:0},900);
    });
})();
