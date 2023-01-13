class ValidatorUtils {
  static String? user(String? user) =>
      user!.isEmpty || RegExp(r'[^a-zA-Z0-9]').hasMatch(user.trim())
          ? "Por favor, insira um utilizador válido."
          : null;

  static String? password(String? password) =>
      password!.isEmpty ? "Por favor, insira uma senha válida." : null;
}
