import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'themes/dark_mode.dart';
import 'themes/light_mode.dart';
import 'themes/theme_provider.dart';

// flutter 에서는 main 함수가 없어도 실행이 가능하다.?
// main 함수가 없어도 실행이 가능한 이유는 runApp 함수가 main 함수의 역할을 대신하기 때문이다.
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

// StatelessWidget 을 상속받아서 MainApp 클래스를 만들었다.
// StatelessWidget 은 상태가 없는 위젯이다.
// StatelessWidget 은 한번 그려지면 다시 그려지지 않는다.
class MainApp extends StatelessWidget {
  const MainApp({super.key}); // 생성자. super.key 는 부모 클래스의 생성자를 호출한다는 의미.

  @override
  Widget build(BuildContext context) {
    // build 함수는 StatelessWidget 의 필수 메서드이다.
    return MaterialApp(
      // MaterialApp 은 Material Design 을 구현한 앱을 만들기 위한 위젯이다.
      debugShowCheckedModeBanner: false, // 디버그 배너를 보이지 않게 한다.
      home: HomePage(), // home 은 앱이 시작할 때 보여줄 첫 번째 페이지이다.
      theme: Provider.of<ThemeProvider>(context).themeData,
    ); // MaterialApp
  } // build
}
