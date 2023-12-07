function init() {
    $.ajax({
        url: '/NLO_project_war_exploded/init',
        type: 'GET',
        contentType: 'text/xml; charset=UTF-8',
        success: function (response) {
            window.location.assign('/NLO_project_war_exploded/' + response);
        }
    });
}

function sendAnswer() {
    let radioButtons = document.getElementsByName("radio");

    for (let i = 0; i < radioButtons.length; i++) {
        if (radioButtons[i].checked) {
            let selectedValue = radioButtons[i].value;
            console.log("Selected value:", selectedValue);
            $.ajax({
                url: '/NLO_project_war_exploded/handler',
                type: 'POST',
                data: JSON.stringify({ answer: selectedValue }),
                success: function (response) {
                    console.log("Selected value:", response);
                    window.location.assign('/NLO_project_war_exploded/' + response)
                },
                error: function (error) {
                    console.error('error', error)
                }
            });
            break;
        }
    }
}
