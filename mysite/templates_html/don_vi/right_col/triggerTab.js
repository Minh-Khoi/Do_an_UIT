function triggerTab(event) {
    $(".container .right_col .col_down .choosing_tab > *").css("background-color", "initial");
    let triggeringEle = event.target;
    $(triggeringEle).css("background-color", "cyan");
    if ($(triggeringEle).hasClass("ds_bac_si")) {
        triggerDisplaying( "bac_si");
        // $(".container .right_col .col_down .display_triggered").each(function (index, currentDOM) {
        //     currentDOM == this
        //     if ($(currentDOM).attr("data-display-trigger") == "bac_si") {
        //         $(currentDOM).css("display", "");
        //     } else if  ($(currentDOM).attr("data-display-trigger") == "khoa") {
        //         $(currentDOM).css("display", "none");
        //     }
        // });
    } else if ($(triggeringEle).hasClass("ds_khoa")) {
        triggerDisplaying( "khoa");
    }
}

function triggerDisplaying(displaying_flag) {
    $(".container .right_col .col_down .display_triggered").each(function (index, currentDOM) {
        if ($(currentDOM).attr("data-display-trigger") == displaying_flag) {
            $(currentDOM).css("display", "");
        } else {
            $(currentDOM).css("display", "none");
        }
    });
}