function buildRequestBody() {
    let tb_BacSi = {
        "ID": "",
        "HoTenBacSi": $("#ten_bs").val(),
        "HinhChuKy" : ""
    };
    return {
        "tb_BacSi": [tb_BacSi]
    };
}