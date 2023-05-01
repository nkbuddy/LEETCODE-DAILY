class Solution {
    public double average(int[] salary) {
        double ans = 0;
        Arrays.sort(salary);
        for(int i =1;i<salary.length-1;i++){
            ans+=salary[i];
            System.out.println(ans);
        }
        return ans/(salary.length-2);
    }
}