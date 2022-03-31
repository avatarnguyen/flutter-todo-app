import 'package:flutter/material.dart';

class TodoItemWidget extends StatelessWidget {
  const TodoItemWidget({
    Key? key,
    required this.title,
    required this.isCompleted,
  }) : super(key: key);

  final String title;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Checkbox(
            value: isCompleted,
            onChanged: (value) {},
          ),
          Flexible(
            child: Text(title, maxLines: 2),
          ),
        ],
      ),
    );
  }
}
