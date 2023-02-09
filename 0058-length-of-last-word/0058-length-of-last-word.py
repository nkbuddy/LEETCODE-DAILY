class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        t = s.split()
        print(t)
        return len(t[-1])