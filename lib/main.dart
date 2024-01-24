
import 'package:flutter/material.dart';
import 'package:p1/sliverAppBar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController c1;

  @override
  void initState() {
    c1 = AnimationController(vsync: this);
    super.initState();
  }

  bool manualT = false;

  @override
  Widget build(BuildContext context) {
    return  SliverAppBarExample();
  }
}
