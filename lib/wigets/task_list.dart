import 'package:flutter/cupertino.dart';
import 'package:todo/wigets/task_title.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[TaskTile(), TaskTile(), TaskTile()],
    );
  }
}
