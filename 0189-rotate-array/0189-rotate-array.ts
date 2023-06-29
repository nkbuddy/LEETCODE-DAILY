/**
 Do not return anything, modify nums in-place instead.
 */
function rotate(nums: number[], k: number): void {
    k = k % nums.length;
    let count:number = 0;
    for(let start = 0; count < nums.length;start++){
        let cur:number = start;
        let prev:number = nums[start];
        do{
            let next:number = (cur+k)%nums.length;
            let temp = nums[next];
            nums[next] = prev;
            prev = temp;
            cur = next;
            count++;
        }while (start!=cur);
    }
};