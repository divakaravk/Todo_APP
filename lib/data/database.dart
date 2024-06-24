import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todolist = [];
  //reference thebox

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todolist = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

//load data
  void loadData() {
    todolist = _mybox.get("TODOLIST");
  }

//updata data

  void updateDataBase() {
    _mybox.put("TODOLIST", todolist);
    ;
  }
}
