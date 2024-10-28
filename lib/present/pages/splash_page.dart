import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tyler/widget_class.dart';
import 'package:riverpod_tyler/color_system.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value){
      context.replace('/home');
    });
  }


  @override
  Widget build(BuildContext context) {
    winH = MediaQuery.of(context).size.height;
    winW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: b0,
      body: Center(
        child: HeadlineTxtL("Tyler",c: w0),
      ),
    );
  }
}
