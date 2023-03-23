class ValidatorHelper {
  static String? required(value) {
    if (value == null || value.isEmpty) {
      return 'Required this field';
    }
    return null;
  }
}
