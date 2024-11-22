import 'package:flutter/material.dart';
import 'package:pesquisa_opiniao/main.dart';
import 'package:pesquisa_opiniao/services/auth_service.dart';
import 'package:pesquisa_opiniao/services/firestore_service.dart';
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

  void _add() {
    final FirestoreService _firestoreService = FirestoreService();
    _firestoreService.addEnquete(
      title: _titleController.text,
      option1: _option1Controller.text,
      option2: _option2Controller.text,
    );
    navigatorKey.currentState?.pop();
  }

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
              const Text('Crie uma enquete!', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
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
                      margin: const EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextInput(
                      validator: (value) => null, 
                      controller: _option2Controller,
                      hintText: 'Opção 2',
                      margin: const EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                ],
              ),
              Button(
                onPressed: _add,
                text: 'Criar enquete',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
