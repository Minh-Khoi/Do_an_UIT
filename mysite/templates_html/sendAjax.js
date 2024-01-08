function sendAPI(requestBody, url_path) {
    $.ajax({
        type: "POST",
        url: "http://localhost:8000/polls/" + url_path.trim(),
        data: requestBody,
        dataType: "json",
        success: function (response) {
            alert(response[0]);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            // Handle error
            console.error("AJAX error:", textStatus, errorThrown);
        }
    });

}

