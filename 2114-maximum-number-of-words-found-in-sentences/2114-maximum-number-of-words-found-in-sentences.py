class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:
        ans = 0
        for c in sentences:
            t = c.split(' ')
            for i in range(len(t)):
                if i+1 > ans:
                    ans = i + 1
        return ans