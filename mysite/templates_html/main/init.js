

function getJsonAndParse() {
    //let screenStrDatas = $("span.screenDatas").html();
    let screenStrDatas = $("span.screenDatas01").html();
    //console.log(screenStrDatas)
    return JSON.parse(screenStrDatas);
}
