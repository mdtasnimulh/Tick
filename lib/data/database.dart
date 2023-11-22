import 'package:hive/hive.dart';

class ToDoDatabase {

  List toDoList = [];

  // reference the box
  final _toDoBox = Hive.box('toDoBox');

  // run this method if this the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Learn More", false],
      ["Work More", false],
    ];
  }

  // load data from database
  void loadData(){
    toDoList = _toDoBox.get("TODOLIST");
  }

  // update the database
  void updateData(){
    _toDoBox.put("TODOLIST", toDoList);
  }

}