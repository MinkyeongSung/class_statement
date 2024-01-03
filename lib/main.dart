import 'package:class_statement/inherited_widget/s_home_2.dart';
import 'package:flutter/material.dart';
import 'package:class_statement/statful_widget/s_home_1.dart';

// class MyData {
//   String value;
//
//   MyData(this.value);
//
//   MyData deepCopy() => MyData(value); // 깊은 복사를 위한 메서드
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen2(),
    );
  }
}
