function doSubmit(eve) {
    let actionStr = $(eve.target).attr("data-action");
    if (actionStr == "create") {
        add_bacsi();
    } else if (actionStr == "update") {
        update_bacsi();
    } else if (actionStr == "delete") {
        delete_bacsi();
    }
    window.location.reload();

}

function delete_bacsi() {
    let requestBody = buildRequestBody();
    sendAPI(requestBody, "delete_bacsi");
}

function update_bacsi() {
    let requestBody = buildRequestBody();
    sendAPI(requestBody, "update_bacsi");
}

function add_bacsi() {
    let requestBody = buildRequestBody();
    sendAPI(requestBody, "save_bacsi");
}


function buildRequestBody() {
    let listRadios = document.querySelectorAll("table input[type=radio]");
    let radioDomChecked = null;
    for (let radio of listRadios) {
        if (radio.checked) {
            radioDomChecked = radio;
        }
    }
    let tb_BacSi = {
        "ID": (radioDomChecked==null) ? "" : radioDomChecked.value,
        "HoTenBacSi": $("#ten_bs").val(),
        "HinhChuKy" : ""
    };
    return JSON.stringify({
        "tb_BacSi": [tb_BacSi]
    });
}