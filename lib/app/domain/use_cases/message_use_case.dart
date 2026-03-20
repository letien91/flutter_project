import 'package:template_project/app/domain/entities/message/message.dart';
import 'package:template_project/app/domain/repositories/message_repository.dart';

class MessageUseCase {
  final MessageRepository repository;

  MessageUseCase(this.repository);

  Future<List<Message>> getLocalMessage(Message? lastMessage) {
    return repository.getLocalMessage(lastMessage);
  }
}
