function tableClick(ev) {
    // check the radio
    let domTarget = ev.target;
    let domTr = $(domTarget).parentsUntil("table")[0];
    $("table.danh_sach_thong_ke  tr:not(.top_row) input[type=radio]").attr("checked", false);
    $(domTr).find("input[type=radio]").attr("checked", true);
    // prepare datas
    let recordOrdering = $(domTr).find("input[type=radio]").attr("id").split("_")[1];
    let datasJson = getJsonAndParse();
    let obj_benhnhan = datasJson.tb_BenhNhan[recordOrdering];
    let obj_sieuam = datasJson.tb_SieuAm[recordOrdering];
    debugger;
    // populate field
    $("input#hoten").val(obj_benhnhan.HoTenBenhNhan);
    $("input#namsinh").val(obj_benhnhan.NamSinh);
    $("input#gioitinh").val(obj_benhnhan.GioiTinh);
    $("select#bacsi").val(obj_sieuam.TenBacSiSieuAm);
    if (isNaN(obj_sieuam.MauSieuAm)) {
        $("select#loaisieuam").val($("select#loaisieuam > option[data-compare='"+obj_sieuam.MauSieuAm+"']").val());
    } else {
        $("select#loaisieuam").val(obj_sieuam.MauSieuAm);
    }
    $("input#chuandoan").val(obj_sieuam.ChanDoan);
    // set href for "Chi tiet " button
    $("#updateDetails").parent().attr("href", "home/"+ obj_benhnhan.ID);
}