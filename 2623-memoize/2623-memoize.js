/**
 * @param {Function} fn
 */
function memoize(fn) {
    let ans =[];
    return function(...args) {
        let key = args.join('-').toString();
        //console.log(key);
        if(ans[`${key}`]!=undefined){
            return ans[`${key}`];
            console.log(ans[`${key}`]);
        }
        
        return ans[`${key}`]=Number(fn(...args));
        //console.log(ans);
    }
}


/** 
 * let callCount = 0;
 * const memoizedFn = memoize(function (a, b) {
 *	 callCount += 1;
 *   return a + b;
 * })
 * memoizedFn(2, 3) // 5
 * memoizedFn(2, 3) // 5
 * console.log(callCount) // 1 
 */