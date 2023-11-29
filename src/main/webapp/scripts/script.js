function init() {
    $.ajax({
        url: '/NLO_project_war_exploded//init',
        type: 'GET',
        contentType: 'text/xml; charset=UTF-8',
        success: function (response) {
            console.log('Запрос выполнен успешно:', response);
            window.location.assign('jsp/main.jsp');
        }
    });
}
