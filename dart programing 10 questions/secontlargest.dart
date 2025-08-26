//Write a function that finds the second largest unique number in a list of integers and returns the sum of the largest and second largest unique numbers.
//Input: [10,9,3,4,5,6,7,13]
int? sumOfLargestAndSecondLargest(List<int> numbers) {
    List<int> uniqueNumbers = numbers.toSet().toList();
    if (uniqueNumbers.length < 2) return null;
    uniqueNumbers.sort((a, b) => b.compareTo(a));
    return uniqueNumbers[0] + uniqueNumbers[1];
}
void main(){
        List<int> input = [10, 9, 3, 4, 5, 6, 7, 13];
        int? result = sumOfLargestAndSecondLargest(input);
        if (result != null) {
            print('Sum of largest and second largest unique numbers: ' + result.toString());
        } else {
            print('Not enough unique numbers.');
        }
}