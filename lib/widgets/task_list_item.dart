import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/services/todos_service.dart';

import '../models/todo_model.dart';

class TaskListItem extends StatelessWidget {
  final Todo task;

  TaskListItem({@required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.completed,
        onChanged: (bool checked) {
          Provider.of<TodosService>(context, listen: false).toggleTodo(task);
        },
      ),
      title: Text(task.title),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {
          Provider.of<TodosService>(context, listen: false).deleteTodo(task);
        },
      ),
    );
  }
}