class Message {
  String messageContent;
  DateTime messageDate;
  bool isMessegeSendedByUser;
  int messageStatus; // 0 = not sent <> 1 = sent <> 2 = seen
  Message(this.messageContent, this.messageDate, this.isMessegeSendedByUser,
      this.messageStatus);
}
