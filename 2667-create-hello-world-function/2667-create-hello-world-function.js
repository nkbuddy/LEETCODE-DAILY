/**
 * @return {Function}
 */
var createHelloWorld = function() {
    
    return function(...args) {
        output = "Hello World";
        return output;
    }
};

/**
 * const f = createHelloWorld();
 * f(); // "Hello World"
 */