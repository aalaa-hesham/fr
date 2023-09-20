import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/login.dart';
import 'package:untitled/sign.dart';
import 'contact.dart';
import 'sign.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}
// GoRouter router = GoRouter(routes: [
//   GoRoute(path: '/con',
//     builder: (context,state) =>Con(),)
//
// ]);
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Log.login,
      routes: {
        Log.login: (context) => Log(),
        Voc.vo:(context) => Voc(),
        Con.c:(context) => Con(),
      }
    );

  }
}

