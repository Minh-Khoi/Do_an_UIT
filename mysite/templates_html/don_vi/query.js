function loadBacsiTable() {
    $.ajax({
        type: "GET",
        url: "http://localhost:8000/polls/query_ds_bacsi",
        data: "data",
        dataType: "json",
        success: function (response) {
            let datas = response;
            addRowToTable(datas);
        }
    });
}

function addRowToTable(datas) {
    for (let i = 0; i < datas.length; i++){
        let trDom = document.createElement("TR");
        
        let tdDomID = document.createElement("TD");
        let tdDomHoten = document.createElement("TD");
        let tdDomChuKy = document.createElement("TD");
        $(tdDomID).html(datas[i]["ID"]); // HoTenBacSi//HinhChuKy
        $(tdDomHoten).html(datas[i]["HoTenBacSi"]);
        $(tdDomChuKy).html(datas[i]["HinhChuKy"]);

        let tdDomSelected = document.createElement("TD");
        let radioDom = document.createElement("input");
        radioDom.type = "radio";
        radioDom.name = "ID_";
        radioDom.id = "ID_"+datas[i]["ID"];
        radioDom.value = datas[i]["ID"];
        addEventSelection(radioDom);
        tdDomSelected.appendChild(radioDom);

        trDom.appendChild(tdDomSelected);
        trDom.appendChild(tdDomID);
        trDom.appendChild(tdDomHoten);
        trDom.appendChild(tdDomChuKy);
        $("table.tb_ds_bac_si").append(trDom);
    }
}




function addEventSelection(thisDom) {
    console.log("Hello Event selection");
    thisDom.addEventListener("change", function (e) { 
        console.log(e.target);
        let tdDomHoten = $(e.target).parent().parent().find("td:nth-child(3)").html();
        $("#ten_bs").val(tdDomHoten);
    });
}