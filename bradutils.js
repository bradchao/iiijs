function checkTWId(id){
    // 1. 長度 == 10
    // 2. 1 = A ~ Z
    // 3. 2 = 1 or 2
    // 4. 3-10 = 0~9
    // 5. 檢查碼
    let ret = false;
    let letters = 'ABCDEFGHJKLMNPQRSTUVXYWZIO';
    if (id.match(/^[A-Z][12][0-9]{8}$/)){
        let c1 = id.charAt(0);
        let n12 = letters.indexOf(c1) + 10;  // E => 4 => 14
        let n1 = Math.floor(n12 / 10);  // 1
        let n2 = n12 % 10;              // 4
        let n3 = parseInt(id.substr(1,1));
        let n4 = parseInt(id.substr(2,1));
        let n5 = parseInt(id.substr(3,1));
        let n6 = parseInt(id.substr(4,1));
        let n7 = parseInt(id.substr(5,1));
        let n8 = parseInt(id.substr(6,1));
        let n9 = parseInt(id.substr(7,1));
        let n10 = parseInt(id.substr(8,1));
        let n11 = parseInt(id.substr(9,1));
        let sum = n1*1 + n2*9 + n3*8 + n4*7 + n5*6 + n6*5 + n7*4 + 
                n8*3 + n9*2 + n10*1 + n11*1;
        ret = sum % 10 == 0;

    }

    return ret;
}

function createTWId(){
    let gender = Math.floor(Math.random()*2) == 0;
    return createTWIdByGender(gender);
}
function createTWIdByArea(area){
    let gender = Math.floor(Math.random()*2) == 0;
    return createTWIdByBoth(area, gender);
}
function createTWIdByGender(gender){
    let letters = 'ABCDEFGHJKLMNPQRSTUVXYWZIO';
    let rand = Math.floor(Math.random()*26);    // 0 - 25
    let area = letters.substr(rand,1);
    return createTWIdByBoth(area, gender);
}
// area = A ~ Z
// gender = true(1) / false(2)
function createTWIdByBoth(area = 'A', gender = false){
    let id  = area;
    id += gender?"1":"2";   // 
    for (let i=0; i<7; i++){    
        id += Math.floor(Math.random()*10);
    }
    for (let j=0; j<10; j++){
        if (checkTWId(id + j)){
            // OK
            id += j;
            break;
        }
    }

    return id;
}


function clone(source){
    if (source === null || typeof (source) !== 'object') return source;

    let target = new Object();
    for (let prop in source){
        if (typeof(source[prop]) === 'object'){
            target[prop] = clone(source[prop]);
        }else{
            target[prop] = source[prop];
        }
    }

    return target;
}

Date.prototype.getTWYear = function(){
    return this.getFullYear()-1911;
}

Date.prototype.getCWeek = function(){
    let w = this.getDay();  // 0 - 6
    let cw = ['週日','週一','週二','週三','週四'
    ,'週五','週六'];
    return cw[w];
}
