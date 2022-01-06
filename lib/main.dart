import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

import 'screens/tasks_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TaskData>(
      create: (BuildContext context)=> TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    )
  );
}
