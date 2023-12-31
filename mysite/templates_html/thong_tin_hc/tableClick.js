function tableClick(ev) {
    // check the checkbox
    let domTarget = ev.target;
    let domTr = $(domTarget).parentsUntil("table")[0];
    $("table.danh_sach_thong_ke  tr:not(.top_row) input[type=checkbox]").attr("checked", false);
    $(domTr).find("input[type=checkbox]").attr("checked", true);
    // prepare datas
    let recordOrdering = $(domTr).find("input[type=checkbox]").attr("id").slice(-1);
    let datasJson = getJsonAndParse();
    let obj_benhnhan = datasJson.tb_BenhNhan[recordOrdering];
    let obj_sieuam = datasJson.tb_SieuAm[recordOrdering];

    // populate field
    $("input#hoten").val(obj_benhnhan.HoTenBenhNhan);
    $("input#namsinh").val(obj_benhnhan.NamSinh);
    $("input#gioitinh").val(obj_benhnhan.GioiTinh);
    $("select#bacsi").val(obj_sieuam.TenBacSiSieuAm);
    $("select#loaisieuam").val(obj_sieuam.MauSieuAm);
    $("select#chuandoan").val(obj_sieuam.ChanDoan);
}