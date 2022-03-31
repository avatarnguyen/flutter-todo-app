// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int id;
  final int userId;
  final String? title;
  final bool completed;

  const Todo({
    required this.id,
    required this.userId,
    this.title,
    required this.completed,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        title,
        completed,
      ];

  Todo copyWith({
    int? id,
    int? userId,
    String? title,
    bool? completed,
  }) {
    return Todo(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}
