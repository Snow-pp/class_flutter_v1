import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 데이터 만들기 - Todo 클래스 설계
class Todo {
  bool isCompleted;
  String description;

  Todo(this.isCompleted, this.description);
}

// 2. Provider
// 최초 생성시에 상태값을 가지게 된다. 해당 상태값을 view에 연결해두면, view는 해당 상태값을 통해 그림을 그린다.
// 하지만 현재 학습하고 있는 Provider는 이후에 상태값이 변경이 되더라도 상태는 변경이 되지만 그림은 다시 그려주지 않는다.
final todoProvider = Provider<Todo>((ref) {
  return Todo(true, "공부하기");
});

// 3. 범위 지정해주기 - 앱 루트 위젯트리부터 구역을 지정한다.
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TodoPage(),
      ),
    );
  }
}

// 4. 소비자 위젯 선언하기
class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref - Provider가 관리하는 상태(데이터)에 접근할 수 있게 해준다.

    // Todo todo = ref.watch(provider);
    Todo todo =
        ref.read(todoProvider); // 상태값을 한번만 읽을 때 사용한다. 즉 상태의 변화를 수신하지 않는다.

    return Center(
      child: Text(
        '해야할 일 : ${todo.isCompleted}, ${todo.description}',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
