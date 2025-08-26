/*Given an array arr[] of non-negative integers and a value sum, the task is to check if there is a subset of the given array whose sum is equal to the given sum. 
Examples: 
Input: arr[] = {3, 34, 4, 12, 5, 2}, sum = 9
Output: True
Explanation: There is a subset (4, 5) with sum 9.*/
void main() {
  List<int> arr = [3, 34, 4, 12, 5, 2];
  int sum = 9;
  int n = arr.length;
  bool result = false;

  for (int mask = 0; mask < (1 << n); mask++) {
    int currentSum = 0;
    for (int i = 0; i < n; i++) {
      if ((mask & (1 << i)) != 0) {
        currentSum += arr[i];
      }
    }
    if (currentSum == sum) {
      result = true;
      break;
    }
  }

  print(result);
}