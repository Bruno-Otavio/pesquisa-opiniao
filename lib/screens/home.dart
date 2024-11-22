import 'package:flutter/material.dart';
import 'package:pesquisa_opiniao/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigatorKey.currentState?.pushNamed('/create'),
        backgroundColor: Colors.blue.shade800,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}