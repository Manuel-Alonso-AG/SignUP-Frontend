import 'package:intl_phone_field/phone_number.dart';

String? validatorEmail(String? value) {
  if (value!.isEmpty) {
    return 'Llene este campo';
  } else if (!RegExp(r'^[a-zA-Z0-9_.±]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$').hasMatch(value)) {
    return 'Correo no valido';
  }/* else {

    TODO: Agrega la validacion que necesites
  
  }*/
  
  return null;
}

String? validatorPass(String? value) {
  if (value!.isEmpty) {
    return 'Llene este campo';
  } else if (value.length < 8) {
    return 'La contraseña minimo tiene que tener 8 caracteres';
  }/* else {

    TODO: Agrega la validacion que necesites
  
  }*/

  return null;
}

String? validatorConfirmPass(String? value, String? passValue) {
  if (value!.isEmpty) {
    return 'Llene este campo';
  } else if (passValue!.isEmpty) { 
    return 'Ingrese primero la contraseña';
  } else if (value != passValue) {
    return 'La contraseña es diferente';
  } else if (value.length < 8){
    return 'La contraseña es invalida';
  }/* else {

    TODO: Agrega la validacion que necesites
  
  }*/
  
  return null;
}

String? validatorPhone(PhoneNumber? value) {
  return null;
}

String? validatorName(String? value) {
  if (value!.isEmpty) {
    return 'Llene este campo';
  } else if (value.length < 3) {
    return 'Tiene que tener al menos 3 letras';
  } /* else {

    TODO: Agrega la validacion que necesites
  
  }*/

  return null;
}
