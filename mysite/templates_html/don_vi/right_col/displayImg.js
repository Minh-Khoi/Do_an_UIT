let imgInp = document.querySelector(".container .right_col .col_down > .inline_items > .chuky > input#chuky_upload"); 

imgInp.onchange = evt => {
    const [file] = imgInp.files;
    if (file) {
        document.querySelector('.container .right_col .col_down > .inline_items > .chuky > img').src
                                                                    = URL.createObjectURL(file);
    }
}