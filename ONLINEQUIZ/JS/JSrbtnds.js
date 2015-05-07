var x1 = 0;
var x2 = 0;
var x3 = 0;
var x4 = 0;
function s1(b1) {

    if (x1 == 0) {
        if (b1.checked == true)
            x1 = 1;
        x2 = 0;
        x3 = 0;
        x4 = 0;
    }
    else if (x1 == 1) {
        if (b1.checked == true) {
            b1.checked = false;
            x1 = 0;
        }
    }

}

function s2(b2) {

    if (x2 == 0) {
        if (b2.checked == true)
            x2 = 1;
        x1 = 0;
        x3 = 0;
        x4 = 0;

    }
    else if (x2 == 1) {
        if (b2.checked == true) {
            b2.checked = false;
            x2 = 0;
        }
    }

}


function s3(b3) {

    if (x3 == 0) {
        if (b3.checked == true)
            x3 = 1;
        x1 = 0;
        x2 = 0;
        x4 = 0;

    }
    else if (x3 == 1) {
        if (b3.checked == true) {
            b3.checked = false;
            x3 = 0;
        }
    }

}
function s4(b4) {

    if (x4 == 0) {
        if (b4.checked == true)
            x4 = 1;
        x1 = 0;
        x2 = 0;
        x3 = 0;

    }
    else if (x4 == 1) {
        if (b4.checked == true) {
            b4.checked = false;
            x4 = 0;
        }
    }

}