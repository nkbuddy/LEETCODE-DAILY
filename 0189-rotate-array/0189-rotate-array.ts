/**
 Do not return anything, modify nums in-place instead.
 */
function rotate(nums: number[], k: number): void {
    k =k % nums.length;
    let count:number =0;
    for(let start = 0;count<nums.length;start++){
        let current = start;
        let prev = nums[start];
        do{
            let next:number = (current + k) % nums.length;
            let temp:number = nums[next];
            nums[next] = prev;
            prev = temp;
            current = next;
            count++;
        }while(start!==current);
    }
};