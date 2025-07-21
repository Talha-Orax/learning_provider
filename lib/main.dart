import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/count_provider.dart';
import 'package:learning_provider/Screens/count_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: const MaterialApp(
        home: CountScreen(),
      ),
    );
  }
}
