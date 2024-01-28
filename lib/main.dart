import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
