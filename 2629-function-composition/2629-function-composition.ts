type F = (x: number) => number;

function compose(functions: F[]): F {
	return (num)=> {
        functions = [...functions].reverse();
        functions.map((func)=>{
            num = func(num);
        })
        return num;
    }
};

/**
 * const fn = compose([x => x + 1, x => 2 * x])
 * fn(4) // 9
 */