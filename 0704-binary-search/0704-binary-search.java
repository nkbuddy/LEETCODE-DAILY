class Solution {
    public int search(int[] nums, int target) {
        int lo = 0;
        int hi = nums.length-1;
    while (lo < hi) {
        int mid = lo + (int)Math.floor((hi-lo+1)/2);
        if (target < nums[mid]) {
            hi = mid - 1;
        } else {
            lo = mid; 
        }
    }
        if(nums[lo]==target){
            return lo;
        }else{
            return -1;
        }
}}