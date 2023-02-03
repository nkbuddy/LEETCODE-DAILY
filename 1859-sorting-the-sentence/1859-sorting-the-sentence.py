class Solution:
    def sortSentence(self, s: str) -> str:
        t = s.split()
        ans = []
        ans2 = []
        for i in t:
            temp = i[-1]+i[:-1]
            ans.append(temp)
        ans.sort()
        for j in ans:
            temp = j[1:]
            ans2.append(temp)
        return " ".join(ans2)