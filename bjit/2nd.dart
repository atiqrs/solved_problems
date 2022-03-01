import 'dart:io';
import 'dart:math';

void main() {
  Node node;
  List<Node> arr = [];
  List arrRow = ['1 / 2', '2 / 3', '4 / 7'];

  for (int i = 0; i < arrRow.length; i++) {
    var val = int.parse(arrRow[i].split('/')[0]) / int.parse(arrRow[i].split('/')[1]);

    if (i == 0) {
      arr.add(Node(null, val, i + 1));
    } else if (arrRow.length - 1 == i) {
      arr.add(Node(i - 1, val, null));
    } else {
      arr.add(Node(i - 1, val, i + 1));
    }
    // arr.add(int.parse(arrRow[i].split('/')[0]) / int.parse(arrRow[i].split('/')[1]));
  }

  int comparisonIndex = 1;

  // List<List<Node>> s = arr..sort((x, y) => (x.valueB).compareTo((y.valueB)));
  print(arr);
  arr.sort((a, b) => a.valueB.compareTo(b.valueB));
  print(arr);
// 0.5
// 0.6666666666666666
// 0.5714285714285714
  double nVal = stdin.readLineSync() as double;
  print(nVal);
  // if (2 < nVal && nVal < 10) {
  //   n = nVal;
  //   print(n);
  // }
  print(arr);
  arr.sort();
// double linked list
  print(arr.toString());
}

class Node {
  var a;
  double b;
  var c;
  get valueA => a;
  double get valueB => b;
  get valueC => c;

  Node(this.a, this.b, this.c);

  @override
  String toString() {
    // TODO: implement toString
    return '$b ';
    // return '[$a, $b, $c]';
  }
}
