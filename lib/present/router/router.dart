import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tyler/present/pages/home_page.dart';
import 'package:riverpod_tyler/present/pages/splash_page.dart';
import 'package:riverpod_tyler/present/pages/launch_list_page.dart';
import 'package:riverpod_tyler/present/pages/launch_detail_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/home/launch',
      builder: (context, state) => LaunchListPage(),
    ),
    GoRoute(
      path: '/home/launch/:missionName',
      builder: (context, state) => LaunchDetailPage(missionName: state.pathParameters['missionName']!),
    ),
  ],
);