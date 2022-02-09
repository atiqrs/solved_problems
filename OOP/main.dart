import 'mixin.dart';
import 'msgModel.dart';

void main() {
  // data.add(Data(2, "348c2a25-b0ff-423c-9b23-.jpg", "Arifur Rahman", 6, "BBBB"));
  // print(data.toString());
  // print("----------------");
  // data.remove();
  // data.removeWhere((element) => element.userId == 8);
  // AllMsgsList.messages
  //     .add(ChatMessage(messageContent: "Hello", messageType: 0));

  for (var item in AllMsgsList.messages) {
    print(item.toString());
    print("----------------");
  }
}
