import 'package:flutter/material.dart';
import 'package:group/features/main/main_page.dart';

import '../../common/constants/app_textfield.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

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
          TextFormField(
            decoration: TextFields.primaryInput.copyWith(
              labelText: 'Confirmar Senha',
              hintText: 'Confirme sua senha',
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
                return 'Digite uma senha';
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
