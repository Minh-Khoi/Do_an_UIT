function clearSelection() {
    console.log("heeloo");
    $("table.tb_ds_bac_si > tr>td>input[type=radio]").prop("checked",false);
}



// document.querySelectorAll("table.tb_ds_bac_si  tr td input[type=radio]").forEach((ele) => {
//     ele.addEventListener("change", (e) => {
//         e.preventDefault();
//         console.log("where are yo");
//         let tdDomHoten = $(e.target).parent().parent().find("td:nth-child(3)").html();
//         $("#ten_bs").val(tdDomHoten);
//     })
// });