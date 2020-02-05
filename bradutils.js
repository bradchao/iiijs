function checkTWId(id){
    // 1. 長度 == 10
    // 2. 1 = A ~ Z
    // 3. 2 = 1 or 2
    // 4. 3-10 = 0~9
    // 5. 檢查碼

    let ret = false;
    if (id.match(/^[A-Z][12][0-9]{8}$/)){
        ret = true;
    }

    return ret;
}