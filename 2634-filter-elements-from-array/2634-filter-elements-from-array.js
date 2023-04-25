/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    let arrAway = []
    arr.map((x,y)=>{
        if(fn(x,y)){
            arrAway.push(x)
        }
    })
    return arrAway;
};