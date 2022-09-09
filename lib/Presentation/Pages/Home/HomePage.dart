import 'package:app/Presentation/Pages/Factory/routeFactory.dart';
import 'package:app/Presentation/Providers/UserProvider/UserBinding.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.deepOrange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children: <Widget>[
          //   ListView(
          //     children: <Widget>,
          //   )
          // ],
        ),
      ),
    );
  }
}

final homeRoute = routeFactory.makeRoutes([PageList('/home', const Home(), UserBinding())]);