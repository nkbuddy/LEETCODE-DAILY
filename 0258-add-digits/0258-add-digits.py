class Solution:
    def addDigits(self, num: int) -> int:
        while(num>9):
            newnew = [int(i)for i in (str(num))]
            num = sum(newnew)
        return num