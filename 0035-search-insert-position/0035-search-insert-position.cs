public class Solution {
    public int SearchInsert(int[] nums, int target) {
        int pivot;
        int left = 0;
        int right = nums.Length - 1;
    while (left <= right) {
      pivot = left + (right - left) / 2;
      if (nums[pivot] == target) return pivot;
      if (target < nums[pivot]) right = pivot - 1;
      else left = pivot + 1;
    }
    return left;
    }
}