class Solution {
  List<int>? twoSum(List<int> nums, int target) {
    List<int>? ans=null;
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if  (nums[i] + nums[j] == target && i != j  ){
           ans = [i, j];
        } else if  (nums[i] + nums[i] == target && ans == null) {
           ans = [i, i];
        } 
      }
    }
    return ans;
  }
}

class Solution2 {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> res = Map();
    for (int i = 0; i < nums.length; i++) {
        int n = target - nums[i];
        if(res.containsKey(n)) {
            return [i, res[n]!];
        } else {
            res[nums[i]] = i;
        }
    }
    return [];
  }
}
