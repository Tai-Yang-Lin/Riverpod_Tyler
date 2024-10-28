import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tyler/color_system.dart';
import 'package:riverpod_tyler/widget_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: (){
              context.push('/home/launch');
              },
            child: Container(
                width: winW * 0.6,
                height: 40,
                color: p800,
                child: Center(child: BodyTxtL("see launch",c: w0))
            ),
        ),
      ),
    );
  }
}
