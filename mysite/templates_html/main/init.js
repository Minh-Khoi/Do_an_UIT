

function getJsonAndParse() {
    //let screenStrDatas = $("span.screenDatas").html();
    let screenStrDatas = $("span.screenDatas01").html();
    //console.log(screenStrDatas)
    return JSON.parse(screenStrDatas);
}

function before() {
    $.ajax({
        type: "GET",
        url: "http://localhost:8000/polls/home/509",
        data: "data",
        dataType: "json",
        success: function (response) {
            //let datas = response;
            //var jsonString = JSON.stringify(datas);
            //$("span.screenDatas").html(jsonString)
            //alert($("span.screenDatas").html())
            populateTable();
            debugger;
            // addOptionsIntoSelect("select#loaisieuam", valuesArray);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // Handle error
            console.error("AJAX error:", textStatus, errorThrown);
        }
    });
}



function populateTable() {
    let jsonObj = getJsonAndParse()[0];
    console.log(jsonObj.HoTenBenhNhan)

    $("#ho_va_ten_BN").val(jsonObj.HoTenBenhNhan)
    $("#sdt").val("05/05/2020")
    //console.log($("#ho_va_ten_BN").val("35"))
    // let numOfBenhNhan = jsonObj.tb_BenhNhan.length;

    // for (let i = 0; i < numOfBenhNhan; i++) {
    //     console.log(jsonObj.tb_BenhNhan);
    //     let table_tr_DOM_cloned = $("table.danh_sach_thong_ke  tr:not(.top_row)").first().clone();
    //     $(table_tr_DOM_cloned).css("display", "");
    //     $(table_tr_DOM_cloned).find("td:nth-child(2)").find("input").attr("id", "chon_" + i);
    //     $(table_tr_DOM_cloned).find("td:nth-child(3)").html(jsonObj.tb_BenhNhan[i].ID);
    //     $(table_tr_DOM_cloned).find("td:nth-child(4)").html(jsonObj.tb_SieuAm[i].Ngay);
    //     $(table_tr_DOM_cloned).find("td:nth-child(5)").html("");
    //     $(table_tr_DOM_cloned).find("td:nth-child(6)").html(jsonObj.tb_BenhNhan[i].ID);
    //     $(table_tr_DOM_cloned).find("td:nth-child(7)").html(jsonObj.tb_BenhNhan[i].HoTenBenhNhan);
    //     $(table_tr_DOM_cloned).find("td:nth-child(8)").html(jsonObj.tb_BenhNhan[i].GioiTinh);
    //     $("table.danh_sach_thong_ke ").append(table_tr_DOM_cloned);
    // }
}