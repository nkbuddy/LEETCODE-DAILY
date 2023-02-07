class Solution:
    def findClosestElements(self, arr: List[int], k: int, x: int) -> List[int]:
        new_arr = sorted(arr, key = lambda item: abs(item - x))
        return sorted(new_arr[:k])