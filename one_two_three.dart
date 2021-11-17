void main() {
  print("hello this is the first!!");

  // one two three funtion
  List value1 = [1, 2, 3, 1, 2, 3, 1, 2, 3];
  List value2 = [1, 2, 3, 1, 2, 1, 2, 3, 1];

  int retVal = oneTwoThree(value2);
  print(
      'if this is 123 array then return 0 otherwise return 1;\nOutput: $retVal\n');
}

int oneTwoThree(List value) {
  for (int i = 0; i < value.length; i += 3) {
    if (value[i] == 1)
      continue;
    else if (value[i + 1] == 2)
      continue;
    else if (value[i + 2] == 3)
      continue;
    else
      return 1;
  }
  return 0;
}
