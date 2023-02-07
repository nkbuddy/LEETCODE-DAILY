class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        ans = []
        adict = {}
        for i in nums:
            if i not in adict:
                adict[i] = 1
            else:
                adict[i] += 1
        sorted_dict = dict(sorted(adict.items(), key=lambda item: item[1], reverse=True))
        ans = list(sorted_dict.keys())
        return ans[:k]