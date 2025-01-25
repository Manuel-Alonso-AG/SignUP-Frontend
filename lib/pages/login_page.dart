import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/utils/colors_constants.dart';
import 'package:frontend/utils/radius_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';
import 'package:frontend/utils/text_constants.dart';
import 'package:frontend/utils/validators.dart';
import 'package:frontend/widgets/buttom_widget.dart';
import 'package:frontend/widgets/checkbox_widget.dart';
import 'package:frontend/widgets/field_widget.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<CheckboxWidgetState> checkboxKey = GlobalKey<CheckboxWidgetState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool loadingButton = false;

  void submitForm() {
    if (!formKey.currentState!.validate()) {
      setState(() => loadingButton = false);
      return;
    }
    
    setState(() => loadingButton = true);

    bool isChecked = checkboxKey.currentState?.isChecked ?? false;
    debugPrint('Checkbox is checked: $isChecked');

    // Implementa la logica para interactuar con el backend
    // Ejm: AuthService.login(nameController.text, passController.text);
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
              const Expanded(
                child: Center(
                  child: Text("Bienvenido")
                )
              ),
              Expanded(
                flex: 2,
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Inicia Sesión', style: TextStyleConstants.titleLarge(context)),
          const SizedBox(height: paddMedium),
          FieldCustom(
            controller: nameController,
            labelText: 'Usuario',
            validator: validatorName,
          ),
          const SizedBox(height: paddMedium),
          FieldCustom(
            controller: passController,
            labelText: 'Contraseña',
            validator: validatorPass,
            typeField: TypeField.password,
          ),
          const SizedBox(height: paddMedium),
          CheckboxWidget(
            key: checkboxKey,
            titleWidget: const Text('Recordar contraseña'),
          ),
          const SizedBox(height: paddMedium),
          ButtomCustom(
            onPressed: submitForm,
            isLoading: loadingButton,
            typeButton: TypeButton.expanded,
            background: ColorConstants.primary(context),
            child: Text(
              'Entrar',
              style: TextStyleConstants.bodyLarge(
                context,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: paddLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿No tienes una cuenta? '),
              InkWell(
                onTap: widget.onTap,
                child: Text(
                  '¡Regístrate!',
                  style: TextStyleConstants.bodyMedium(
                    context,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }
}
