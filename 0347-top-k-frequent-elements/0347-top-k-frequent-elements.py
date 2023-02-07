class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        ans = []
        adict = {}
        countdown = 0
        for i in nums:
            if i not in adict:
                adict[i] = 1
            else:
                adict[i] += 1
        sorted_dict = dict(sorted(adict.items(), key=lambda item: item[1], reverse=True))
        for i in sorted_dict.keys():
            ans.append(i)
            countdown += 1
            if k == countdown:
                return ans
        return ans