/**
 * @param {Function[]} functions
 * @return {Function}
 */
var compose = function(functions) {
	return (num) =>{
        bigfunctions = [...functions].reverse();
        bigfunctions.map((func)=>{
            num = func(num);
        })
        return num;
    }
};

/**
 * const fn = compose([x => x + 1, x => 2 * x])
 * fn(4) // 9
 */