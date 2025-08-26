import 'dart:math';

void main() {
  String s = "abcabcbb";
  int length = lengthOfLongestSubstring(s);
  print(length);
}

int lengthOfLongestSubstring(String s) {
  int maxLength = 0;
  int left = 0;
  Map<String, int> charIndexMap = {};

  for (int right = 0; right < s.length; right++) {
    String char = s.substring(right, right + 1);
    if (charIndexMap.containsKey(char)) {
      left = max(left, charIndexMap[char]! + 1);
    }
    charIndexMap[char] = right;
    maxLength = max(maxLength, right - left + 1);
  }

  return maxLength;
}