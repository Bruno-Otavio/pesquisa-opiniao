import 'package:flutter/material.dart';
import 'package:pesquisa_opiniao/main.dart';
import 'package:pesquisa_opiniao/services/auth_service.dart';
import 'package:pesquisa_opiniao/widgets/button.dart';
import 'package:pesquisa_opiniao/widgets/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Faça Login!', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
              const SizedBox(height: 50),
              TextInput(
                validator: (value) => null, 
                controller: _emailController,
                hintText: 'Email',
                margin: const EdgeInsets.symmetric(vertical: 5),
              ),
              TextInput(
                validator: (value) => null, 
                controller: _passwordController,
                hintText: 'Senha',
                obscureText: true,
                margin: const EdgeInsets.symmetric(vertical: 5),
              ),
              Button(
                onPressed: () => AuthService.signIn(_emailController.text, _passwordController.text),
                text: 'Entrar',
              ),
              Button(
                onPressed: () => navigatorKey.currentState?.pushNamed('/register'),
                text: 'Cadastrar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
