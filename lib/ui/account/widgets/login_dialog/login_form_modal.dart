import 'package:flutter/cupertino.dart';

class LoginFormModal {
  LoginFormModal()
      : emailController = TextEditingController(),
        passController = TextEditingController();

  final TextEditingController emailController, passController;

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email không được để trống';
    }
    return null;
  }

  String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'pass không được để trống';
    }
    return null;
  }
}
