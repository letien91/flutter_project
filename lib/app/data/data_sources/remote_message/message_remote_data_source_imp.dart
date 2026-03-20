import 'package:template_project/app/data/data_sources/remote_message/message_remote_data_source.dart';
import 'package:template_project/app/data/models/message/message_model.dart';

class MessageRemoteDataSourceImp extends MessageRemoteDataSource {
  @override
  Future<List<MessageModel>> getMessages() async {
    return <MessageModel>[];
  }

  @override
  Future<void> sendMessage(MessageModel message) async {}
}
