class ChatMessage {
  String messageContent;
  int messageType;
  ChatMessage({
    required this.messageContent,
    required this.messageType,
  });

  @override
  String toString() {
    // TODO: implement toString
    return "$messageContent\n$messageType";
  }
}
