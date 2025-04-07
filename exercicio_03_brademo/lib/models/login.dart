class Login {
  final String username;
  final String password;

  Login({required this.username, required this.password});
  
  // Método estático para validar as credenciais
  static bool validate(String username, String password) {
    return username == 'admin' && password == '1234';
  }
}