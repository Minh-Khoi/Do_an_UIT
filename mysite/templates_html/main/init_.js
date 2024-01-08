// Load list Bac si and Mau Sieu Am
function load_bacsi_and_mausieuam(bacsi_1_rendered,bacsi_2_rendered, mausieuam_rendered) {
    $.ajax({
        type: "GET",
        url: "http://localhost:8000/polls/query_ds_mausieuam",
        data: "data",
        dataType: "json",
        success: function (response) {
            let datas = response;
            console.log(typeof (datas));
            let valuesArray = datas.map(element => {
                return { "ID": element.ID, "HTML": element.TenMau };
            });
            addOptionsIntoSelect("select#mau_sieu_am", valuesArray,mausieuam_rendered);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // Handle error
            console.error("AJAX error:", textStatus, errorThrown);
        }
    });

    setTimeout(() => { }, 1000);

    $.ajax({
        type: "GET",
        url: "http://localhost:8000/polls/query_ds_bacsi",
        data: "data",
        dataType: "json",
        success: function (response) {
            let datas = response;
            console.log(datas);
            let valuesArray = datas.map(element => {
                return { "ID": element.ID, "HTML": element.HoTenBacSi };
            });
            addOptionsIntoSelect("select#bs_chi_dinh", valuesArray, bacsi_1_rendered);
            addOptionsIntoSelect("select#bs_sieu_am", valuesArray, bacsi_2_rendered);
        }
    });
    setTimeout(() => { }, 1000);

}

function addOptionsIntoSelect(domSelector, valuesArray, default_value_rendered) {
    for (let i = 0; i < valuesArray.length; i++) {
        debugger;
        let optionDOM = document.createElement("option");
        optionDOM.value = valuesArray[i].ID;
        optionDOM.innerHTML = valuesArray[i].HTML;
        let found = valuesArray[i].ID == default_value_rendered;
        let foundTenMauSieuAm = domSelector == "select#mau_sieu_am" && valuesArray[i].HTML == default_value_rendered;
        debugger;
        if (found || foundTenMauSieuAm) {
            optionDOM.selected = true;
        } 
        $(domSelector).append(optionDOM);
    }
}

// Populate datas for input fields (if datas for BenhNhan exist)
// "Ngay Sinh"
function populateNgaySinhDatas(ngaysinhStr) {
    let ngaysinhArr = ngaysinhStr.split(/[-/]/);
    if (ngaysinhArr.length == 1) {
        $("input#nam_sinh").val(ngaysinhArr[0] +"-01-01");
    } else if (ngaysinhArr.length > 1) {
        if (ngaysinhArr[0].length == 4) {
            $("input#nam_sinh").val(ngaysinhArr[0] + "-" + ngaysinhArr[1]+"-" +ngaysinhArr[2]);
        } else {
            $("input#nam_sinh").val(ngaysinhArr[2] + "-" + ngaysinhArr[0]+"-" +ngaysinhArr[1]);
        }
    }
}
// Nội dung kết quả
function load_noidung(noidung) {
    if (noidung.length > 0) {
        $(".noi_dung_ket_qua").html(noidung);
    }
}
