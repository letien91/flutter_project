import 'package:template_project/app/data/models/message/message_model.dart';

abstract class MessageLocalDataSource {
  Future<List<MessageModel>> getMessages();
  void saveMessages(List<MessageModel> messages);
  void saveMessage(MessageModel message);
}
