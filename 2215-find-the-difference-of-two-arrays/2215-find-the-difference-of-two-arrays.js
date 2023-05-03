/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[][]}
 */
var findDifference = function(nums1, nums2) {
    let commonList1 = [];
    let commonList2 = [];
    for(let i=0 ; i<nums1.length ; i++){
        if(!nums2.includes(nums1[i]) && !commonList1.includes(nums1[i])){
            commonList1.push(nums1[i]);
        }
    }
    for(let j=0;j<nums2.length;j++){
        if(!nums1.includes(nums2[j]) && !commonList2.includes(nums2[j])){
            commonList2.push(nums2[j]);
        }
    }
    return([commonList1,commonList2]);
};