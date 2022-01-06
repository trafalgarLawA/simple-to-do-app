import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

   final bool isChecked;
   final String taskTitle;
   final Function checkboxCallback;
   final Function longPressCallBack;
   TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallback,  required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //onTap: longPressCallBack(),
      title: GestureDetector(
        onTap: longPressCallBack(),
        child: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null
          ),
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (v){
          checkboxCallback(v);
        },
      )
    );
  }

}




