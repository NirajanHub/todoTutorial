import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'My new task',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckbox(isChecked, (bool checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        }
        ));
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function checkbox;

  TaskCheckbox(this.checkboxState,this.checkbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: checkbox,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
