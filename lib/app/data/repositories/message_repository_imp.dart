import 'package:template_project/app/data/data_sources/local_message/message_local_data_source.dart';
import 'package:template_project/app/data/data_sources/remote_message/message_remote_data_source.dart';
import 'package:template_project/app/domain/entities/message/message.dart';
import 'package:template_project/app/domain/repositories/message_repository.dart';

class MessageRepositoryImp extends MessageRepository {
  final MessageLocalDataSource localDataSource;
  final MessageRemoteDataSource remoteDataSource;

  MessageRepositoryImp({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<void> sendMessage(Message message) async {}

  @override
  Future<List<Message>> getLocalMessage(Message? lastMessage) async {
    return <Message>[];
  }

  @override
  Future<List<Message>> getRemoteMessage(Message? lastMessage) async {
    return <Message>[];
  }

  @override
  Future<void> saveLocalMessages(List<Message> messages) async {}
}
