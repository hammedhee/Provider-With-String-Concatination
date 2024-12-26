import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/home.dart';
import 'package:providerdemo/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Provider1())],
      child: MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
