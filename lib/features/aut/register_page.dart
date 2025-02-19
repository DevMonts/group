import 'package:flutter/material.dart';
import 'package:group/features/main/main_page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Nome'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Senha'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Confirmar Senha'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Main(),
                ),
              );
            },
            child: Text('Cadastrar'),
          ),
        ],
      ),
    );
  }
}
