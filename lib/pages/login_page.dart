import 'package:flutter/material.dart';
import 'package:frontend/theme/input_theme.dart';
import 'package:frontend/utils/colors_constants.dart';
import 'package:frontend/utils/constants.dart';
import 'package:frontend/utils/radius_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';
import 'package:frontend/utils/text_constants.dart';
import 'package:frontend/widgets/buttom_widget.dart';

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
      decoration: BoxDecoration(gradient: GradientBackground().normal(context)),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            // TODO: Se agrega el logo o nombre de la aplicaion
            child: Center(child: Text('Bienvenido', style: TextStyleConstants.displayMedium(context, color: Colors.white, fontWeight: FontWeight.bold)))
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: paddAllLarge,
              decoration: BoxDecoration(
                borderRadius: borderTopRadiusLarge,
                color: ColorConstants.background(context),
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
                  Text('Inicia Sesión', style: TextStyleConstants.titleLarge(context)),
                  const SizedBox(height: padd),
                  TextFormField(
                    decoration: InputTheme(label: 'Usuario',).normal(context)
                  ),
                  const SizedBox(height: padd),
                  TextFormField(
                    decoration: InputTheme(label: 'Contraseña',).normal(context)
                  ),
                  const SizedBox(height: padd),
                  ButtomCustom(
                    onPressed: () {},
                    typeButton: TypeButton.expanded,
                    background: ColorConstants.primary(context),
                    child: const Text('Entrar', style: TextStyle(color: Colors.white),),
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