import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:goldselver/home.dart';
import 'package:goldselver/network/dio_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHepler.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
