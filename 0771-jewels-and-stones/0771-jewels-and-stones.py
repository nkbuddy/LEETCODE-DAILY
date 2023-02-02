class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        ans = 0
        for i in stones:
            for j in jewels:
                if i == j:
                    ans+=1
        return ans