
import 'package:flutter/material.dart';
import 'package:apitest/toDo.dart';
import 'package:apitest/AlertDialog_screen.dart';

class toDoList extends StatefulWidget {
  @override
  _toDoListState createState() => _toDoListState();
}

class _toDoListState extends State<toDoList> {

TextEditingController todoControll = TextEditingController();
  List<Todo> todos = [];

 _toggleTodo(Todo getTodo, bool isChecked){
   setState(() {
     getTodo.isDone = isChecked;
   });
 }
_addTodo() async{
  final getTodo = await showDialog(
    context: context,
    builder: (BuildContext context){
      return alertDailog();
    }
  );

  if(getTodo != null){
    setState(() {
      todos.add(getTodo);
    });
  }
}
 Widget _creatItem(BuildContext context, int index){
   final getTodo = todos[index];

   return CheckboxListTile(
     value: getTodo.isDone,
     title: Text(getTodo.title),
     onChanged: (bool isChecked){
       _toggleTodo(getTodo, isChecked);
     },
   );
 }
   @override
  Widget build(BuildContext context) {
    //create listview with checkbox
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Todo CheckBoxList"),
      ),
      body: ListView.builder(
        itemBuilder: _creatItem,
        itemCount: todos.length,
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () => _addTodo(),
        child: Icon(Icons.add),
      ),
    );
  }
}