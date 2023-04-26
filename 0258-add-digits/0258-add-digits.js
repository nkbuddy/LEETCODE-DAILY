/**
 * @param {number} num
 * @return {number}
 */
var addDigits = function(num) {
    while(num>=10){
        let newnew = String(num).split('').map(Number);
        num = newnew.reduce((a,b)=>a+b);
    }
    return num;
};