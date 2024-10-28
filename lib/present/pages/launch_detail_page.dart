import 'package:flutter/material.dart';
import 'package:riverpod_tyler/color_system.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tyler/widget_class.dart';

class LaunchDetailPage extends StatelessWidget {
  final String missionName;

  LaunchDetailPage({required this.missionName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: b0,),
          onPressed: () => context.pop(),
        ),
        title: HeadlineTxtS('Launch Details'),
      ),
      body: Center(
        child: BodyTxtL('Mission: $missionName'),
      ),
    );
  }
}
