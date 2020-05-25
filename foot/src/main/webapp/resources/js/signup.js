$(function() {
    $("#alert-success").hide();
    $("#alert-danger").hide();
});

function submit_change() {
    var pwd1 = $("#pwd1").val();
    var pwd2 = $("#pwd2").val();
    if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
            $("#alert-success").show();
            $("#alert-danger").hide();
            $("#usersubmit").removeAttr("disabled");
        } else {
            $("#alert-success").hide();
            $("#alert-danger").show();
            $("#usersubmit").attr("disabled", "disabled");
        }
    }
}

function onlyNumber(event){
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        return false;
}
 
function removeChar(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
}