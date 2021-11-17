/*
Mastermind game
Mastermind  is a board game for two players. The first player invents a code and the second player tries to guess this code. A code is made up 4 coloured pins and their position. There are 6 colours to choose from and the same colour can be repeated multiple times.
Examples of different codes:
Red Green Blue Yellow
Red Green Yellow Blue
Black White Red Orange
Red Red Blue White
(note that while the first two codes use the same colours, they are different as Blue and Yellow occupy different positions)
The game play is as follows:
The second player (the one that is guessing) sets out a series of pins in order to guess the code. The first player (that defined the code) then provides some feedback to the player in light of how close they are to the correct combination.
The feedback is as follows:
Number of pins that are both the right colour and position
Number of pins that are correct but in the wrong position
Note that the rest pins in the code will pins that are neither correct or position.
Your task is to evaluate a guess made by player two of the code set by player one. For the sake of simplicity, we use uppercase letters from A to F instead of colours.
You can test your solution and play as a second player using playMastermind.
Different Letters
Example 1
Secret ABCD and guess ABCD must be evaluated to: rightPosition = 4, wrongPosition = 0. All letters are guessed correctly in respect to their positions.
Example 2
Secret ABCD and guess CDBA must be evaluated to: rightPosition = 0, wrongPosition = 4. All letters are guessed correctly, but none has the right position.
Example 3
Secret ABCD and guess ABDC must be evaluated to: rightPosition = 2, wrongPosition = 2. A and B letters and their positions are guessed correctly. C and D letters are guessed correctly, but their positions are wrong.
At first, you can implement this easier task, when all the letters are different, and only after that start with the next part, when letters can be repeated. Run MastermindTestDifferentLetters to make sure you've implemented this part correctly.
Repeated Letters
Example 4
Secret AABC and guess ADFE must be evaluated to: rightPosition = 1, wrongPosition = 0. A at the first position is guessed correctly with its position. If we remove the first A from consideration (comparing the remaining ABC and DFE only), that will give us no more common letters or positions.
Example 5
Secret AABC and guess ADFA must be evaluated to: rightPosition = 1, wrongPosition = 1. The first A letter is guessed correctly with its position. If we remove this letter from consideration (comparing the remaining ABC and DFA), we find the second A letter which is guessed correctly but stays at the wrong position.
Example 6
Secret AABC and guess DFAA must be evaluated to: rightPosition = 0, wrongPosition = 2. No letters are guessed correctly concerning their positions. When we compare the letters without positions, A is guessed correctly. Since A is present twice in both guess and secret, it must be counted two times.
Example 7
Secret AABC and guess DEFA must be evaluated to: rightPosition = 0, wrongPosition = 1. The letter A occurs only once in the second string, that's why it counted only once as staying at the wrong position.
After implementing the task for repeated letters, run MastermindTestDifferentLetters to make sure it works correctly.
*/

void main() {
  List value1 = ['E', 'D', 'E', 'B'];
  List value2 = ['C', 'B', 'F', 'E'];

  // List value1 = ['E', 'E', 'A', 'D'];
  // List value2 = ['E', 'E', 'E', 'E'];
  // List value1 = ['D', 'A', 'E', 'F'];
  // List value2 = ['F', 'E', 'C', 'A'];
  // List value1 = ['E', 'B', 'A', 'C'];
  // List value2 = ['A', 'F', 'C', 'B'];
  // List value1 = ['A', 'B', 'C', 'D'];
  // List value2 = ['C', 'D', 'B', 'A'];
  // List value1 = ['A', 'B', 'C', 'D'];
  // List value2 = ['A', 'B', 'D', 'C'];
  // List value1 = ['A', 'A', 'B', 'C'];
  // List value2 = ['A', 'D', 'F', 'E'];
  // List value1 = ['A', 'A', 'B', 'C'];
  // List value2 = ['A', 'D', 'F', 'A'];
  // List value1 = ['A', 'A', 'B', 'C'];
  // List value2 = ['D', 'F', 'A', 'A'];
  // List value1 = ['A', 'A', 'B', 'C'];
  // List value2 = ['D', 'E', 'F', 'A'];

  // rightPosition = 2
  // wrongPosition = 2

  List retVal = solve(value1, value2);
  print('rightPosition: ${retVal[0]}\nwrongPosition: ${retVal[1]}');
}

List solve(List value1, List value2) {
  int rightPosition = 0;
  int wrongPosition = 0;
  for (int i = 0; i < 4; i++) {
    if (value1[i] == value2[i]) {
      value2[i] = 1;
      rightPosition++;
    }
  }

  // finding wrong match
  for (int i = 0; i < 4; i++) {
    if (value2[i] != 1)
      for (int j = 0; j < 4; j++) {
        if (value1[i] == value2[j]) {
          value2[j] = 0;
          wrongPosition++;
        }
      }
  }

  return [rightPosition, wrongPosition];
}
