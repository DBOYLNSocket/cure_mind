import 'package:cure_mind/database/message_db_connect.dart';

class Message {
  final int? id;
  final String name;
  final List<String> message_list;
  const Message({
    this.id,
    required this.name,
    required this.message_list,
  });

  Message copy({
    int? id,
    String? name,
    List<String>? message_list,
  }) =>
      Message(
        id: id ?? this.id,
        name: name ?? this.name,
        message_list: message_list ?? this.message_list,
      );

  static Message fromJson(Map<String, Object?> json) => Message(
        id: json[columnId] as int,
        name: json[columnName] as String,
        message_list: json[columnChatMessageList] as List<String>,
      );

  Map<String, Object?> toJson() => {
        columnName: name,
        columnChatMessageList: message_list,
      };
}
