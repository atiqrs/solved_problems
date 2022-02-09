import 'dart:html';

void main() {
  //Don't
  var list = [4, 5, 6];
  var newList = [1, 2];
  newList.addAll(list);

//Do
  var list2 = [4, 5, 6];
  var newList2 = [1, 2, ...list2];

  print(newList2);

  // print(
  //     'if this is 123 array then return 0 otherwise return 1;\nOutput: $retVal\n');
}
