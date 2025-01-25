import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/utils/colors_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';
import 'package:frontend/utils/text_constants.dart';
import 'package:frontend/utils/validators.dart';
import 'package:frontend/widgets/buttom_widget.dart';
import 'package:frontend/widgets/checkbox_widget.dart';
import 'package:frontend/widgets/field_widget.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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
          IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Teléfono',
              fillColor: Theme.of(context).colorScheme.surface
            ),
            controller: phoneController,
            initialCountryCode: 'MX',
            readOnly: true,
            pickerDialogStyle: PickerDialogStyle(
              backgroundColor: Theme.of(context).colorScheme.background,
              searchFieldInputDecoration: InputDecoration(
                hintText: 'Buscar país',
                fillColor: Theme.of(context).colorScheme.surface
              ),
              padding: const EdgeInsets.all(paddMedium)
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            languageCode: 'es',
            validator: (p0) => validatorPhone(p0)
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
        ],
      ),
    );
  }
}
