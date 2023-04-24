class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        while(len(stones)>1):
            stones.sort(reverse=True)
            a = stones[0] - stones[1]
            stones.pop(0)
            stones.pop(0)
            if (a>0):
                stones.append(a)
            print(stones)
        if(len(stones)==0):
            return 0
        else:
            return stones[0]