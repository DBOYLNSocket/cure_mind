import 'dart:developer';

import 'package:cure_mind/message.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const String databaseName = 'Messages.db';
const String tableName = 'Messages';

const String columnId = '_id';
const String columnName = 'name';
const String columnMessageList = 'message_list';

const List<String> columns = [
  columnId,
  columnName,
  columnMessageList,
];

class MessageDBConnect {
  static final MessageDBConnect instance = MessageDBConnect._createInstance();
  static Database? _database;

  MessageDBConnect._createInstance();

  Future<Database> get database async {
    return _database ??= await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), databaseName);
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database database, int version) async {
    const String idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const String intType = 'INTEGER NOT NULL';
    const String textType = 'TEXT NOT NULL';
    const String textNullType = 'TEXT';

    await database.execute('''
      CREATE TABLE $tableName (
        $columnId $idType,
        $columnName $textType,
        $columnMessageList $textNullType
      )
    ''');
  }

  Future createMessage(Message Message) async {
    final database = await instance.database;
    await database.insert(tableName, Message.toJson());
  }

  Future<Message> readMessage(int id) async {
    final database = await instance.database;
    final MessageMaps = await database.query(
      tableName,
      columns: columns,
      where: '$columnId = ?',
      whereArgs: [id],
    );

    if (MessageMaps.isNotEmpty) {
      return Message.fromJson(MessageMaps.first);
    } else {
      throw Exception('id: $id not found.');
    }
  }

  Future<List<Message>> readAllMessagesSample() async {
    // Map<String, Object?> messageMap_1 = {
    //   'id': 0,
    //   'name': 'User00',
    //   'chat': ['おーい！', 'こんばんわ！', '元気してる？'],
    // };
    // Map<String, Object?> messageMap_2 = {
    //   'id': 1,
    //   'name': 'User01',
    //   'chat': ['Yeah！', 'Hello！', 'Nice to meet you!!'],
    // };
    // Map<String, Object?> messageMap_3 = {
    //   'id': 2,
    //   'name': 'User02',
    //   'chat': ['謝謝！', '大家好', '万岁!!!'],
    // };
    //

    Map<String, Object?> messageMap_1 = {
      'id': 0,
      'name': 'User00',
      'chat': '元気してる？',
    };
    Map<String, Object?> messageMap_2 = {
      'id': 1,
      'name': 'User01',
      'chat': 'Nice to meet you!!',
    };
    Map<String, Object?> messageMap_3 = {
      'id': 2,
      'name': 'User02',
      'chat': '万岁!!!',
    };

    List<Map<String, Object?>> MessagesMapsList = [
      messageMap_1,
      messageMap_2,
      messageMap_3
    ];
    log('MessagesMapsList<Map<String, Object?>>: $MessagesMapsList');
    return MessagesMapsList.map((json) => Message.fromJson(json)).toList();
  }

  Future<List<Message>> readAllMessages() async {
    final database = await instance.database;
    final MessagesMapsList = await database.query(
      tableName,
    );

    return MessagesMapsList.map((json) => Message.fromJson(json)).toList();
  }

  Future<int> updateMessage(Message Message) async {
    final database = await instance.database;

    return database.update(
      tableName,
      Message.toJson(),
      where: '$columnId = ?',
      whereArgs: [Message.id],
    );
  }

  Future<int> deleteMessage(int id) async {
    final database = await instance.database;

    return await database.delete(
      tableName,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  Future closeDatabase() async {
    final database = await instance.database;

    database.close();
  }
}
