import 'package:flutter/material.dart';
import '/components/my_drawer.dart';

// ThemeData 는 Material Design 을 구현한 앱을 만들기 위한 위젯이다.
class HomePage extends StatefulWidget {
  // StatefulWidget 은 상태가 있는 위젯이다.
  const HomePage({super.key}); // 생성자. super.key 는 부모 클래스의 생성자를 호출한다는 의미.

  @override
  State<HomePage> createState() =>
      _HomePageState(); // createState 는 StatefulWidget 의 필수 메서드이다.
}

// StatefulWidget 과 StatelessWidget 의 차이점은 StatefulWidget 은 상태가 있고 StatelessWidget 은 상태가 없다는 것이다.
// StatefulWidget 은 한번 그려지면 다시 그려지지 않는다.
// StatefulWidget 은 상태가 있기 때문에 상태를 변경할 수 있다.
class _HomePageState extends State<HomePage> {
  // _HomePageState 는 HomePage 의 상태를 나타낸다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background, // 배경색
      appBar: AppBar(title: const Text("P L A Y L I S T")),
      drawer: const MyDrawer(),
    );
  }
}
