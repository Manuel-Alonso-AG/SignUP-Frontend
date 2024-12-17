import 'package:flutter/material.dart';
import 'package:frontend/theme/input_theme.dart';
import 'package:frontend/utils/constants.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: PaddAll().large(),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Text('Registrate', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: padd),
                TextFormField(
                  decoration: InputTheme(label: 'Usuario',).normal(context)
                ),
                const SizedBox(height: padd),
                TextFormField(
                  decoration: InputTheme(label: 'Correo',).normal(context)
                ),
                const SizedBox(height: padd),
                IntlPhoneField(
                  decoration: InputTheme(label: 'Numero de Telefono').normal(context),
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
                const SizedBox(height: spacer),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Ya tienes una cuenta? '),
                    InkWell(
                      onTap: widget.onTap,
                      child: const Text('Inicia Sesión!', style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
SingleChildScrollView(
        child: Center(
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: PaddAll().large(),
            child: Form(
              child: Column(
                children: [
                  Text('Inicia Sesión', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: padd),
                  TextFormField(
                    decoration: InputTheme(label: 'Usuario',).normal(context)
                  ),
                  const SizedBox(height: padd),
                  TextFormField(
                    decoration: InputTheme(label: 'Correo',).normal(context)
                  ),
                  const SizedBox(height: padd),
                  IntlPhoneField(
                    decoration: InputTheme(label: 'Numero de Telefono').normal(context),
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
                      const Text('Ya tienes una cuenta? '),
                      InkWell(
                        onTap: widget.onTap,
                        child: const Text('Inicia Sesión!', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  const Spacer()
                ]
              ),
            ),
          ),
        ),
      ),
*/