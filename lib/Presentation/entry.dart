import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/Presentation/Pages/Home/HomePage.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}