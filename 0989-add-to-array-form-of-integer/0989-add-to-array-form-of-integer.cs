public class Solution {
    public IList<int> AddToArrayForm(int[] num, int k) {
        double converted_num = double.Parse(string.Join("",num));
        Console.WriteLine(converted_num);
        converted_num += k;
        Console.WriteLine(converted_num);
        int[] ans = converted_num.ToString().Select(c => (int)Char.GetNumericValue(c)).ToArray();
        return (BigInteger.Parse(string.Join("", num.Select(x => x))) + k).ToString().Select(x => int.Parse(x.ToString())).ToList();
    }
}