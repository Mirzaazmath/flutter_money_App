import 'package:flutter/material.dart';
import 'package:flutter_money_app/screens/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Color(0xff59616c)
        )
      ),
      home: HomeScreen(),
    );
  }
}
