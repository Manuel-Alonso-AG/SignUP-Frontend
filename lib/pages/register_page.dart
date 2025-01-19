import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/theme/input_theme.dart';
import 'package:frontend/utils/colors_constants.dart';
import 'package:frontend/utils/radius_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';
import 'package:frontend/utils/text_constants.dart';
import 'package:frontend/utils/validators.dart';
import 'package:frontend/widgets/buttom_widget.dart';
import 'package:frontend/widgets/checkbox_widget.dart';
import 'package:frontend/widgets/password_field_widget.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController= TextEditingController();
  final TextEditingController emailController= TextEditingController();
  final TextEditingController phoneController= TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController passConfirmController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CheckboxWidgetState> _checkboxKey = GlobalKey<CheckboxWidgetState>();

  bool onHidenConfirmPassword = true;
  
  void hidenConfirmPassword() => setState(() => onHidenConfirmPassword = !onHidenConfirmPassword);
  
  void submitForm() {
    bool isChecked = _checkboxKey.currentState?.isChecked ?? false;
    if (!formKey.currentState!.validate()) return;
    /* TODO: Implementar la lógica para interactuar con el backend */
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: paddAllLarge,
        child: SingleChildScrollView(
          child: formulary(context),
        ),
      ),
    );
  }

  Form formulary(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text('¡Regístrate!', style: TextStyleConstants.titleLarge(context)),
          const SizedBox(height: paddMedium),
          TextFormField(
            decoration: InputCustom.normal(context, 'Usuario'),
            controller: nameController,
            validator: validatorName
          ),
          const SizedBox(height: paddMedium),
          TextFormField(
            decoration: InputCustom.normal(context, 'Correo'),
            controller: emailController,
            validator: validatorEmail
          ),
          const SizedBox(height: paddMedium),
          IntlPhoneField(
            decoration: InputCustom.normal(context, 'Número Telefónico'),
            controller: phoneController,
            initialCountryCode: 'MX',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            languageCode: 'es',
            validator: (p0) => validatorPhone(p0)
          ),
          const SizedBox(height: paddMedium),
          PasswordField(
            controller: passController, 
            labelText: 'Contraseña',
            validator: validatorPass
          ),
          const SizedBox(height: paddMedium),
          TextFormField(
            decoration: InputCustom.password(context, 'Confirmar Contraseña', isToggle: onHidenConfirmPassword, onToggle: hidenConfirmPassword),
            controller: passConfirmController,
            validator: (value) => validatorConfirmPass(value, passController.text)
          ),
          const SizedBox(height: paddMedium),
          CheckboxWidget(
            key: _checkboxKey,
            titleWidget: const Text('Recordar contraseña')
          ),
          const SizedBox(height: paddMedium),
          ButtomCustom(
              onPressed: submitForm,
              typeButton: TypeButton.expanded,
              background: ColorConstants.primary(context),
              child: Text('Entrar', style: TextStyleConstants.bodyLarge(context, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          const SizedBox(height: paddLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Ya tienes una cuenta? '),
              InkWell(
                onTap: widget.onTap,
                child: Text('¡Inicia Sesión!', style: TextStyleConstants.bodyMedium(context, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
