/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
    let newAway = []
    arr.map((x,y)=>{
            newAway.push(fn(x,y))
    })
    return newAway
};