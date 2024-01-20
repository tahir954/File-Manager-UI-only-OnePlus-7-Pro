import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

  bool mannualT = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: [
          SlideInLeft(
            controller: (controller ) => c1=controller,
            from: 200,
            animate: true,
            child: const Icon(
              Icons.emoji_emotions_rounded,
              size: 70,
              color: Colors.yellow,
            ).pOnly(top: 50).centered(),
          ),
          SlideInRight(
            controller: ( controller ) => c1 = controller,
            from: 200,
            animate: true,
            manualTrigger: mannualT,
            child: const Icon(
              Icons.emoji_emotions_rounded,
              size: 70,
              color: Colors.yellow,
            ).pOnly(top: 50).centered(),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                mannualT=!mannualT;
              });
            },
            child: Text('Start'),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
