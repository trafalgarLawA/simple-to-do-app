import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              longPressCallBack: (){
                //taskData.deleteTask(task);
                print("what GG");
              },
              taskTitle: task.name,
              isChecked:  task.isDone,
              checkboxCallback: (bool checkboxState){
                taskData.updateTask(task);
              },
            );
          },

        );
      },
    );
  }
}



