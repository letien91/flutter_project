import 'package:template_project/app/data/data_sources/local_message/message_local_data_source.dart';
import 'package:template_project/app/data/models/message/message_model.dart';

class MessageLocalDataSourceImp extends MessageLocalDataSource {
  @override
  Future<List<MessageModel>> getMessages() async {
    return <MessageModel>[];
  }

  @override
  void saveMessage(MessageModel message) {}

  @override
  void saveMessages(List<MessageModel> messages) {}
}
