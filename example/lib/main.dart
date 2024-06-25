import 'package:flutter/material.dart';
import 'package:rotatingtextcontainer/rotatingtext.dart';

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
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
      title: const Text("Rotatingtext with container"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          RotatedTextContainer(
            borderRadius: BorderRadius.circular(20),
            height: 100,
            gradientColors:const[Colors.black,Colors.white70],
             text:"newExample"),
            const SizedBox(height: 10,),
               RotatedTextContainer(
            borderRadius: BorderRadius.circular(20),
            height: 100,
            gradientColors:const[Colors.black,Colors.white70],
             text:"newExample")
        ],
      ),
    );  
  }
}



