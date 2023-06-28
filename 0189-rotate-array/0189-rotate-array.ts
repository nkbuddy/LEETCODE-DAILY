/**
 Do not return anything, modify nums in-place instead.
 */
function rotate(nums: number[], k: number): void {
    let a:number[]=[];
    for(let i=0;i<nums.length;i++){
        a[(k+i)%nums.length]=nums[i];
    }
    for(let i=0;i<nums.length;i++){
        nums[i]=a[i];
    }
};