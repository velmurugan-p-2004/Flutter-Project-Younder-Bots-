void main() {
  List<int> arr = [7,18,45, -6,19, -1,0];
  int negativeCount = 0;
  for (int num in arr) {
    if (num < 0) {
      negativeCount++;
    }
  }
  print('Total number of negative elements: ' + negativeCount.toString());


}