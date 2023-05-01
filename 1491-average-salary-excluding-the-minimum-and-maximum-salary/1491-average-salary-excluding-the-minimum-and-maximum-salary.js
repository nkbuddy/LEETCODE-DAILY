/**
 * @param {number[]} salary
 * @return {number}
 */
var average = function(salary) {
    salary.sort(function(a,b){return a-b});
    console.log(salary);
    salary.shift();
    console.log(salary);
    salary.pop(salary.length-1);
    console.log(salary);
    return ans = salary.reduce((a,b)=>{return a+b})/salary.length;
};