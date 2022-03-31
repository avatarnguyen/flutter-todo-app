// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_todo_app/core/domain/entities/todo.dart';
import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int userId;
  @HiveField(2)
  final String? title;
  @HiveField(3)
  final bool completed;
  @HiveField(4)
  final DateTime? created;

  TodoModel({
    required this.id,
    required this.userId,
    this.title,
    this.created,
    required this.completed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'title': title,
      'created': created,
      'completed': completed,
    };
  }

  Todo toEntity() => Todo(
        id: id,
        userId: userId,
        title: title,
        created: created,
        completed: completed,
      );

  factory TodoModel.fromEntity(Todo todo) => TodoModel(
        id: todo.id,
        userId: todo.userId,
        title: todo.title,
        completed: todo.completed,
        created: todo.created,
      );

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] != null ? map['title'] as String : null,
      completed: map['completed'] != null ? map['completed'] as bool : false,
      created:
          map['created'] != null ? map['created'] as DateTime : DateTime.now(),
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
