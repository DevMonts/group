import 'package:flutter/material.dart';
import 'package:group/common/constants/app_textfield.dart';
import 'package:group/features/aut/register_page.dart';
import 'package:group/features/main/main_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text('Login'),
            TextField(
              decoration: TextFields.primaryInput.copyWith(
                labelText: 'Email',
                hintText: 'Digite seu email',
              ),
            ),
            TextField(
              decoration: TextFields.primaryInput.copyWith(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
              child: Text('Cadastrar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Main(),
                  ),
                );
              },
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
