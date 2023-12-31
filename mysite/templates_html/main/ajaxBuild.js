function buildRequestBody() {
    let tb_BenhNhan = {
        "ID": $("#IDBN").val(),
        "IDBenhNhan": $("#IDBN").val(),
        "HoTenBenhNhan": $("#ho_va_ten_BN").val(),
        "GioiTinh": $("#gioi_tinh").val(),
        "NamSinh": $("#nam_sinh").val(),
        "DiaChi": $("#dia_chi").val(),
        "SDT": $("#sdt").val(),
        "BHYT": $("#BHYT").val(),
        "Del": "N/A",
    };
    let tb_SieuAm = {
        "ID": "",
        "Ngay": getCurrentDate(),
        "SoPhieu": $("#IDBN").val(),
        "IDBenhNhan": $("#IDBN").val(),
        "TenBenhNhan": $("#ho_va_ten_BN").val(),
        "TenBacSiSieuAm": $("#bs_sieu_am").val(),
        "TenBacSiChiDinh": $("#bs_chi_dinh").val(),
        "MauSieuAm": $("#mau_sieu_am").val(),
        "ChanDoan": $("#chan_doan").val(),
        "NoiDung1": $(".noi_dung_ket_qua").text(), 
        "NoiDung2": "",
        "KetLuan": $(".ket_luan").text(),
        "DeNghi": $(".de_nghi").text(),
        "Khoa": $("#khoa").val(),
    };
    return JSON.stringify({
        "tb_BenhNhan": [tb_BenhNhan], "tb_SieuAm": [tb_SieuAm]
    });
}

function getCurrentDate() {
    let currentDate = new Date();
    let year = currentDate.getFullYear();
    let month = ("0" + (currentDate.getMonth() + 1)).slice(-2); // Month is 0-indexed, add 1 for correct display
    let day = ("0" + currentDate.getDate()).slice(-2);
    return year + "-" + month + "-" + day;
}

function save_home() {
    let requestBody = buildRequestBody();
    let requestPath = "save_home";
    // debugger;
    sendAPI(requestBody, requestPath);
}