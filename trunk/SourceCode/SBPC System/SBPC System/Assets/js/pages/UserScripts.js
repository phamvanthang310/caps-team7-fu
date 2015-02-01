Core.init();
demoHighCharts.init();

$('.tray-nav a').smoothScroll({
    offset: -70
});
$('#password_popup').magnificPopup({
    type: 'inline',
    midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
});
$('#bronze_checkout').magnificPopup({
    type: 'inline',
    callbacks: {
        open: function () {
            $('#membership').text("Brozen User");
            $('#price').text("$2");
        }
    },
    midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
});
$('#silver_checkout').magnificPopup({
    type: 'inline',
    callbacks: {
        open: function () {
            $('#membership').text("Silver User");
            $('#price').text("$5");
        }
    },
    midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
});
$('#gold_checkout').magnificPopup({
    type: 'inline',
    callbacks: {
        open: function () {
            $('#membership').text("Gold User");
            $('#price').text("$8");
        }
    },
    midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
});