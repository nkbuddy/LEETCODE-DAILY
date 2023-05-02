/**
 * @param {number[]} nums
 * @return {number}
 */
var arraySign = function(nums) {
    let count = 0;
    for(let i =0 ;i<nums.length;i++){
        if(nums[i]==0){
            return 0
        }else if(nums[i]<0){
            count++;
        }
    }
    return count%2==1?-1:1;
};