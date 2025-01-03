import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/theme/input_theme.dart';
import 'package:frontend/utils/colors_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';
import 'package:frontend/utils/text_constants.dart';
import 'package:frontend/utils/validators.dart';
import 'package:frontend/widgets/buttom_widget.dart';
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
        padding: paddAllLarge,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Text('Registrate', style: TextStyleConstants.titleLarge(context)),
                const SizedBox(height: paddMedium),
                TextFormField(
                  decoration: InputCustom.normal(context, 'Usuario'),
                  validator: validatorName
                ),
                const SizedBox(height: paddMedium),
                TextFormField(
                  decoration: InputCustom.normal(context, 'Correo'),
                  validator: validatorEmail
                ),
                const SizedBox(height: paddMedium),
                IntlPhoneField(
                  decoration: InputCustom.normal(context, 'Numero de Telefono'),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: validatorPhone
                ),
                const SizedBox(height: paddMedium),
                TextFormField(
                  decoration: InputCustom.normal(context, 'Contraseña'),
                  validator: validatorPass
                ),
                const SizedBox(height: paddMedium),
                TextFormField(
                  decoration: InputCustom.normal(context, 'Confirmat Contraseña'),
                ),
                const SizedBox(height: paddMedium),
                ButtomCustom(
                    onPressed: () {},
                    typeButton: TypeButton.expanded,
                    background: ColorConstants.primary(context),
                    child: const Text('Entrar', style: TextStyle(color: Colors.white),),
                  ),
                const SizedBox(height: paddLarge),
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
