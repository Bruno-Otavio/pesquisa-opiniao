import 'package:flutter/material.dart';
import 'package:pesquisa_opiniao/main.dart';
import 'package:pesquisa_opiniao/services/auth_service.dart';
import 'package:pesquisa_opiniao/widgets/button.dart';
import 'package:pesquisa_opiniao/widgets/text_input.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _option1Controller = TextEditingController();
  final TextEditingController _option2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                controller: _titleController,
                hintText: 'Título',
                margin: const EdgeInsets.symmetric(vertical: 5),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextInput(
                      validator: (value) => null, 
                      controller: _option1Controller,
                      hintText: 'Opção 1',
                      obscureText: true,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  Expanded(
                    child: TextInput(
                      validator: (value) => null, 
                      controller: _option2Controller,
                      hintText: 'Opção 2',
                      obscureText: true,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                ],
              ),
              Button(
                onPressed: () {},
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