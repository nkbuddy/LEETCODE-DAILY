/**
 Do not return anything, modify nums in-place instead.
 */
function rotate(nums: number[], k: number): void {
    k %= nums.length;//3
let temp:number,previous:number;
for(let i =0;i<k;i++){
  previous = nums[nums.length-1];
  for(let j = 0; j < nums.length;j++){
    temp = nums[j];
    nums[j]=previous;
    previous = temp;
  }
}
};