import 'package:app/Presentation/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}