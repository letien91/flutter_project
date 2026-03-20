import 'package:template_project/app/data/models/message/message_model.dart';

abstract class MessageRemoteDataSource {
  Future<List<MessageModel>> getMessages();
  Future<void> sendMessage(MessageModel message);
}
