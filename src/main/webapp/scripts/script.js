function init() {
    $.ajax({
        url: '/NLO_project_war_exploded/init',
        type: 'POST',
        contentType: 'text/xml; charset=UTF-8',
        success: function (response) {
            window.location.assign('/NLO_project_war_exploded/' + response);
        }
    });
}

function sendAnswer() {
    let selectedRadioButton = $('[name="radio"]:checked');
    let selectedValue = selectedRadioButton.val();
    $.ajax({
        url: '/NLO_project_war_exploded/handler',
        type: 'POST',
        data: JSON.stringify({ answer: selectedValue }),
        success: function (response) {
            window.location.assign('/NLO_project_war_exploded/' + response);
        },
        error: function (error) {
            console.error('error', error);
        }
    });
}

function restart() {
    $.ajax({
        url: '/NLO_project_war_exploded/restart',
        type: 'POST',
        success: function (response) {
            window.location.assign('/NLO_project_war_exploded/' + response);
        },
        error: function (error) {
            console.error('error', error);
        }
    });
}
