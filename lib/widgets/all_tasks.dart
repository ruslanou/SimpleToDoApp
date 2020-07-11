import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/services/todos_service.dart';
import 'package:provider_todo/widgets/task_list.dart';

class AllTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosService>(
        builder: (context, todos, child) => TaskList(
              tasks: todos.allTasks,
            ),
      ),
    );
  }
}