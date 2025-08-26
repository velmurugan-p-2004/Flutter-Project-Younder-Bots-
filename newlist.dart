//Write a function that takes a list and returns a new list with all duplicate elements removed
void main(){
  List<int> input = [1, 2, 2, 3, 4, 4, 5];
  List<int> noDuplicates = removeDuplicates(input);
  print('List with duplicates removed: ' + noDuplicates.toString());
}

List<T> removeDuplicates<T>(List<T> list) {
  return list.toSet().toList();
}