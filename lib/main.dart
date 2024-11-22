import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pesquisa_opiniao/firebase_options.dart';
import 'package:pesquisa_opiniao/screens/create.dart';
import 'package:pesquisa_opiniao/screens/home.dart';
import 'package:pesquisa_opiniao/screens/login.dart';
import 'package:pesquisa_opiniao/screens/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      navigatorKey: navigatorKey,
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/create': (context) => const CreateScreen(),
      },
    );
  }
}
