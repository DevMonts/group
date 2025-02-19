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
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text('Login'),
            TextFormField(
              decoration: TextFields.primaryInput.copyWith(
                labelText: 'Email',
                hintText: 'Digite seu email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Digite seu email';
                }
                if (!value.contains('@')) {
                  return 'Digite um email válido';
                }
                if (!value.contains('.com')) {
                  return 'Digite um email válido';
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              decoration: TextFields.primaryInput.copyWith(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                suffixIcon: _obscureText
                    ? IconButton(
                        onPressed: () {
                          setState(
                            () {
                              _obscureText = !_obscureText;
                            },
                          );
                        },
                        icon: Icon(Icons.visibility_off),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(
                            () {
                              _obscureText = !_obscureText;
                            },
                          );
                        },
                        icon: Icon(Icons.visibility),
                      ),
              ),
              obscureText: _obscureText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Digite sua senha';
                }
                if (value.length < 6) {
                  return 'A senha deve ter no mínimo 6 dígitos';
                }
                return null;
              },
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
