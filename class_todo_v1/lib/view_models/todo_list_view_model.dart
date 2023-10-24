
import '../models/todo_item.dart';

class TodoListViewModel {
  List<TodoItem> _items = [TodoItem(title: 'view만들기', isDone: true)];

  // getter
  List<TodoItem> get items => _items;
  
  void addItem(String title) {
    _items.add(TodoItem(title: title, isDone: false));
  }

  // 넘겨 받은 todo 아이템 객체에 isDone 변수값 변경하기
  void toggleItem(TodoItem todo) {
    todo.isDone = !todo.isDone;
  }

}