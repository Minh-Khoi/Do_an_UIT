function doSubmit(eve) {
    let actionStr = $(eve.target).attr("data-action");
    if (actionStr == "delete") {
        //alert("ahihihi");
        delete_sieuam();
        delete_benhnhan();
    }
    window.location.reload();

}

function delete_benhnhan() {
    let requestBody = buildRequestBody();
    sendAPI(requestBody, "delete_benhnhan");
}

function delete_sieuam() {
    let requestBody = buildRequestBody();
    sendAPI(requestBody, "delete_sieuam");
}


function buildRequestBody() {
    let listRadio = document.querySelectorAll("table input[type=radio]");
    let radioDomChecked = null;
    for (let radio of listRadio) {
        if (radio.checked) {
            radioDomChecked  = radio;
        }
    }
    let tb_BenhNhan = {
        "ID": (radioDomChecked ==null) ? "" : radioDomChecked .value,
        "HoTenBenhNhan": $("#hoten").val()
    };
    
    return JSON.stringify({
        "tb_BenhNhan": [tb_BenhNhan],
        "tb_SieuAm": [tb_BenhNhan]
    });
}