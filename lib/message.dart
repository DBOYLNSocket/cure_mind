import 'database/message_db_connect.dart';

class Message {
  final int? id;
  final String name;
  final List<String> chat_message_list;
  const Message({
    this.id,
    required this.name,
    required this.chat_message_list,
  });

  Message copy({
    int? id,
    String? name,
    List<String>? chat_message_list,
  }) =>
      Message(
        id: id ?? this.id,
        name: name ?? this.name,
        chat_message_list: chat_message_list ?? this.chat_message_list,
      );

  static Message fromJson(Map<String, Object?> json) => Message(
        id: json[columnId] as int,
        name: json[columnName] as String,
        chat_message_list: json[columnChatMessageList] as List<String>,
      );

  Map<String, Object?> toJson() => {
        columnName: name,
        columnChatMessageList: chat_message_list,
      };
}
