import 'dart:math';

class Data {
  int userId;
  String imageURL;
  String userFullName;
  int chatId;
  String userDescription;

  Data(this.userId, this.imageURL, this.userFullName, this.chatId,
      this.userDescription);

  @override
  String toString() {
    // TODO: implement toString
    return "$userId\n$imageURL\n$userFullName\n$chatId\n$userDescription\n";
  }
}

void main() {
  List<Data> data = [];

  data.add(Data(8, "348c2a25-b0ff-423c-9b23-d82f2fde281a.jpg", "Atiqur Rahman",
      5, "AAAA"));
  data.add(Data(2, "348c2a25-b0ff-423c-9b23-.jpg", "Arifur Rahman", 6, "BBBB"));

  print(data.toString());

  print("----------------");

  // data.remove();
  data.removeWhere((element) => element.userId == 8);

  print(data.toString());
}
