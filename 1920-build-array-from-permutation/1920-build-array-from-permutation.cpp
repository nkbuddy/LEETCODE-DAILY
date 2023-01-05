class Solution {
public:
    vector<int> buildArray(vector<int>& nums) {
        int n = nums.size();
        vector<int> ans(n);
        for(int i:nums){
            ans[i]=nums[nums[i]];
        }
        return ans;
    }
};