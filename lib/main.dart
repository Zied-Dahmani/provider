import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_notifier.dart';
import 'package:provider_demo/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (context) => CounterNotifier(),
          child: const HomeScreen()
      ),
    );
  }
}
