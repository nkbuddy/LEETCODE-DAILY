class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        ans = "".join(str(c) for c in digits)
        ans = int(ans) + 1
        return (int(x) for x in str(ans))