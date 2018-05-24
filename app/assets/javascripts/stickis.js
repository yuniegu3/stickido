console.log('stickis.js linked');

$(document).on('turbolinks:load', function() {
    var options = {
        cellHeight: 80,
        verticalMargin: 10
    };
    $('.grid-stack').gridstack(options);
});

