import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/home_screen.dart';
import 'package:provider_todo/services/todos_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TodosService(),
      child: MaterialApp(
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}