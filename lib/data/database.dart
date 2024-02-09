import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  //reference our Box
  final _myBox = Hive.box('mybox');

 //first time
  void createInitialData(){
    toDoList = [
      ["Make Tutorial",false],
      ["Do Exercise",false],
    ];
  }
  //load the data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}