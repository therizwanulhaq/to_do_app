import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //refrence the box
  final _myBox = Hive.box("mybox");

//run this if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from the database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
