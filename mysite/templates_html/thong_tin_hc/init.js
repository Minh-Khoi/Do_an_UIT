/**
 * Call Ajax to load all datas from tb_BenhNhan and tb_SieuAm
 * then populate it to the element "span.screenDatas"
 * The function populateTable() will be invoked in the 'success' 's arrow function of the AJAX processing
 */
function before() {
    $.ajax({
        type: "GET",
        url: "http://localhost:8000/polls/query_thongke",
        data: "data",
        dataType: "json",
        success: function (response) {
            let datas = response;
            var jsonString = JSON.stringify(datas);
            $("span.screenDatas").html(jsonString);
            populateTable();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // Handle error
            console.error("AJAX error:", textStatus, errorThrown);
        }
    });
    setTimeout(() => { }, 1000);
}

function queryDatas() {

    load_bacsi_and_mausieuam();
    // waiting
    console.log("datas query called");
    //populateTable();
}

/**
 * pick content of "span.screenDatas", then parse to Json object and return
 */
function getJsonAndParse() {
    //let screenStrDatas = $("span.screenDatas").html();
    let screenStrDatas = $("span.screenDatas").html();
    return JSON.parse(screenStrDatas);
}

function populateTable() {
    let jsonObj = getJsonAndParse();
    let numOfBenhNhan = jsonObj.tb_BenhNhan.length;
    for (let i = 0; i < numOfBenhNhan; i++) {
        console.log(jsonObj.tb_BenhNhan);
        let table_tr_DOM_cloned = $("table.danh_sach_thong_ke  tr:not(.top_row)").first().clone();
        $(table_tr_DOM_cloned).css("display", "");
        $(table_tr_DOM_cloned).find("td:nth-child(2)").find("input").attr("id", "chon_" + i);
        $(table_tr_DOM_cloned).find("td:nth-child(3)").html(jsonObj.tb_BenhNhan[i].ID);
        $(table_tr_DOM_cloned).find("td:nth-child(4)").html(jsonObj.tb_SieuAm[i].Ngay);
        $(table_tr_DOM_cloned).find("td:nth-child(5)").html("");
        $(table_tr_DOM_cloned).find("td:nth-child(6)").html(jsonObj.tb_BenhNhan[i].ID);
        $(table_tr_DOM_cloned).find("td:nth-child(7)").html(jsonObj.tb_BenhNhan[i].HoTenBenhNhan);
        $(table_tr_DOM_cloned).find("td:nth-child(8)").html(jsonObj.tb_BenhNhan[i].GioiTinh);
        $("table.danh_sach_thong_ke ").append(table_tr_DOM_cloned);
    }



}

function load_bacsi_and_mausieuam() {
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
            addOptionsIntoSelect("select#loaisieuam", valuesArray);
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
            addOptionsIntoSelect("select#bacsi", valuesArray);
        }
    });
    setTimeout(() => { }, 1000);
}

function addOptionsIntoSelect(domSelector, valuesArray) {
    for (let i = 0; i < valuesArray.length; i++) {
        let optionDOM = document.createElement("option");
        optionDOM.value = valuesArray[i].ID;
        optionDOM.innerHTML = valuesArray[i].HTML;
        $(domSelector).append(optionDOM);
    }
}