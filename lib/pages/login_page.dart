import 'package:flutter/material.dart';
import 'package:frontend/theme/input_theme.dart';
import 'package:frontend/utils/constants.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: GradientBackground().normal(context)
      ),
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Icon(Icons.login),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: PaddAll().large(),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: rCircular),
                color: Theme.of(context).colorScheme.background,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 0),
                    blurRadius: 8,
                    spreadRadius: 7,
                    color: Colors.black26
                  )
                ]
              ),
              child: Column(
                children: [
                  Text('Inicia Sesión', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: padd),
                  TextFormField(
                    decoration: InputTheme(label: 'Usuario',).normal(context)
                  ),
                  const SizedBox(height: padd),
                  TextFormField(
                    decoration: InputTheme(label: 'Contraseña',).normal(context)
                  ),
                  const SizedBox(height: padd),
                  FilledButton(
                    onPressed: (){}, 
                    child: const Text('Entrar')
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('No tienes una cuenta? '),
                      InkWell(
                        onTap: widget.onTap,
                        child: const Text('Registrate!', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  const Spacer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}