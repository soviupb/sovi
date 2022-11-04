class Validator {
  static String? validateField({required String value}) {
    if (value.isEmpty) {
      return '¡Esto no puede estar vacío!';
    }

    return null;
  }

  static String? validateUserID({required String uid}) {
    if (uid.isEmpty) {
      return 'El ID no puede estar vacío';
    } else if (uid.length <= 3) {
      return 'El ID debe ser mayor a 3 caracteres';
    }

    return null;
  }
}
