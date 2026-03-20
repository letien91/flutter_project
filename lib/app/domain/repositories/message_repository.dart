import 'package:template_project/app/domain/entities/message/message.dart';

abstract class MessageRepository {
  Future<List<Message>> getLocalMessage(Message? lastMessage);
  Future<List<Message>> getRemoteMessage(Message? lastMessage);

  Future<void> sendMessage(Message message);
  Future<void> saveLocalMessages(List<Message> messages);
}
