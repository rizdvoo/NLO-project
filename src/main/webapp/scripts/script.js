function init() {
    $.ajax({
        url: '/init',
        type: 'GET',
        contentType: 'text/xml; charset=UTF-8',
        success: function() {
            console.log('Успішно!');
        },
        error: function(error) {
            console.error('Помилка!', error);
        }
    });
}