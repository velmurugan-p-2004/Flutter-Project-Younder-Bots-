void main() {
  List<int> nums = [1, 1, 2];
  nums.sort();
  List<List<int>> result = [[]];

  for (var num in nums) {
    List<List<int>> newResult = [];
    for (var permutation in result) {
      for (int i = 0; i <= permutation.length; i++) {
        if (i > 0 && permutation[i - 1] == num) continue;
        var newPermutation = [...permutation];
        newPermutation.insert(i, num);
        newResult.add(newPermutation);
      }
    }
    result = newResult;
  }

  for (var permutation in result) {
    if (permutation.length == nums.length) {
      print(permutation);
    }
  }
}