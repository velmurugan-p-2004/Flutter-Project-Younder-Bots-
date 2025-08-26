// Given a list of integers from 1 to N, with one number missing, find the missing number. 
 // Example: findMissingNumber([1, 2, 4, 5]) should return 3

void main() {
  List<int> numbers = [1, 2, 4, 5];
  int missing = findMissingNumber(numbers);
  print('Missing number: ' + missing.toString());
}

int findMissingNumber(List<int> numbers) {
  int n = numbers.length + 1;
  int total = n * (n + 1) ~/ 2;
  int sum = numbers.fold(0, (a, b) => a + b);
  return total - sum;
}

