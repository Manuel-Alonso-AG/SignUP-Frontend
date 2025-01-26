import 'package:flutter/material.dart';
import 'package:frontend/utils/colors_constants.dart';
import 'package:frontend/utils/radius_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';
import 'package:frontend/utils/text_constants.dart';
import 'package:frontend/utils/validators.dart';
import 'package:frontend/widgets/buttom_widget.dart';
import 'package:frontend/widgets/checkbox_widget.dart';
import 'package:frontend/widgets/field_widget.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<CheckboxWidgetState> checkboxKey = GlobalKey<CheckboxWidgetState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController passConfirmController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool loadingButton = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passController.dispose();
    passConfirmController.dispose();
    super.dispose();
  }

  void submitForm() {
    if (formKey.currentState?.validate() ?? false) {
      setState(() => loadingButton = true);
      bool isChecked = checkboxKey.currentState?.isChecked ?? false;
      debugPrint('Checkbox is checked: $isChecked');
      
      // Implementa la logica para interactuar con el backend
      // Ejm: AuthService.login(nameController.text, passController.text);
      
    } else {
      setState(() => loadingButton = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: GradientCustom.defaultGradient()
          ),
          width: double.infinity,
          height: double.infinity,
        ),
        SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    '¡Regístrate!', 
                    style: TextStyleConstants.headlineLarge(context, color: Colors.white)
                  ),
                )
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: paddAllLarge,
                  decoration: BoxDecoration(
                    color: ColorConstants.background(context),
                    borderRadius: borderTopRadiusLarge
                  ),
                  child: SingleChildScrollView(child: buildForm(context))
                )
              )
            ],
          )
        )
      ],
    );
  }

  Form buildForm(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: paddSmall),
          FieldCustom(
            controller: nameController,
            labelText: 'Usuario',
            validator: validatorName
          ),
          const SizedBox(height: paddMedium),
          FieldCustom(
            controller: emailController,
            labelText: 'Correo',
            validator: validatorEmail
          ),
          const SizedBox(height: paddMedium),
          FieldCustom(
            controller: phoneController,
            labelText: 'Teléfono',
            validator: validatorPhone,
            typeField: TypeField.phone
          ),
          const SizedBox(height: paddMedium),
          FieldCustom(
            controller: passController, 
            labelText: 'Contraseña',
            validator: validatorPass,
            typeField: TypeField.password,
          ),
          const SizedBox(height: paddMedium),
          FieldCustom(
            labelText: 'Confirmar Contraseña',
            controller: passConfirmController,
            validator: (value) => validatorConfirmPass(value, passController.text),
            typeField: TypeField.password,
          ),
          const SizedBox(height: paddMedium),
          CheckboxWidget(
            key: checkboxKey,
            titleWidget: const Text('Recordar contraseña')
          ),
          const SizedBox(height: paddMedium),
          ButtomCustom(
              onPressed: submitForm,
              isLoading: loadingButton,
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
          const SizedBox(height: paddLarge),
        ],
      ),
    );
  }
}
