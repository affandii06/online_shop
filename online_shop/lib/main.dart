import 'dart:async';
import 'package:online_shop/view/ui/dashboard/bottomnav.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xhoezy',
      home: MyHomePage(title: 'Xhoezy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Future<Timer> startsplash()async{
    return Timer(Duration(seconds: 2), gotonext);
  }
  
  gotonext(){
    Navigator.pushReplacement(context, PageTransition(child: BottomNav(), type: PageTransitionType.leftToRight));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startsplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('X', style: TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold),),
                Text('E', style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),),
              ],
            ),
            Text('Xhoezy', style: TextStyle(color: Colors.lightBlueAccent),),
          ],
        ),
      ),
    );
  }
}
