//Write a program to give the following output for the given input 
//Eg 1: Input: a1b10 Output: abbbbbbbbbb 
void main() {
  String input = "a1b10";
  String output = "";
  int i = 0;

  while (i < input.length) {
    String char = input[i];
    i++;
    String numStr = "";
    while (i < input.length && isDigit(input[i])) {
      numStr += input[i];
      i++;
    }
    int count = int.parse(numStr);
    output += char * count;
  }

  print(output);
}

bool isDigit(String s) => s.codeUnitAt(0) >= 48 && s.codeUnitAt(0) <= 57;