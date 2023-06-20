/**
 Do not return anything, modify nums in-place instead.
 */
function rotate(nums: number[], k: number): void {
    k%=nums.length;
    let ans:number[]=[]
    for(let i=nums.length-k;i<nums.length;i++){
        ans.push(nums[i]);
    }
    for(let i = 0;i<nums.length-k;i++){
        ans.push(nums[i]);
    }
    for(let i=0;i<nums.length;i++){
        nums[i]=ans[i];
    }
};