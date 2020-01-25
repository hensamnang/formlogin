
import 'package:apitest/toDo.dart';
import 'package:flutter/material.dart';

class alertDailog extends StatelessWidget {
  final todoControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Add New List'),
        content: TextField(
          autofocus: true,
          controller: todoControll,
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text("Cancel"),
          ),
          FlatButton(
            onPressed: (){
             final getTodo = new Todo(title: todoControll.value.text);
                todoControll.clear();
                Navigator.of(context).pop(getTodo);
            },
            child: Text("Add"),
          ),
        ],
      );
  }
}