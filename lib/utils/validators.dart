String? validatorEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Llene este campo';
  } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
    return 'Correo no valido';
  }
  return null;
}

String? validatorPass(String? value) {
  if (value == null || value.isEmpty) {
    return 'Llene este campo';
  } else if (value.length < 8) {
    return 'La contraseña minimo tiene que tener 8 caracteres';
  }
  return null;
}

String? validatorConfirmPass(String? value, String? passValue) {
  if (value == null || value.isEmpty) {
    return 'Llene este campo';
  } else if (passValue == null || passValue.isEmpty) {
    return 'Ingrese primero la contraseña';
  } else if (value != passValue) {
    return 'La contraseña es diferente';
  }
  return null;
}

String? validatorPhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Número de teléfono inválido';
  }
  return null;
}

String? validatorName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Llene este campo';
  } else if (value.length < 3) {
    return 'Tiene que tener al menos 3 letras';
  }
  return null;
}
