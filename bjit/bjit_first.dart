import 'dart:math';

void main() {
  int a = 2;
  int r = 1;
  int p = 2;
  int n = 5;
  double sum = 0;

  // int? a = stdin.readLineSync();

  for (int i = 0; n >= i; i++) {
    if (i == 0) {
      sum = sum + a;
    } else {
      sum = sum + pow(a + (i * r), p);
      print('sum: $sum');
    }
  }
}
