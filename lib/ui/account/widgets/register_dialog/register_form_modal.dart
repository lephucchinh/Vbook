import 'package:flutter/cupertino.dart';

class RegisterFormModal {
  RegisterFormModal()
    : accountController = TextEditingController(),
      emailController = TextEditingController(),
     passController = TextEditingController();
  final TextEditingController accountController, emailController, passController;

  String? accountValidator(String? value) {
    if(value == null || value.isEmpty) {
      return 'Tên hiển thị không được để trống';
    }
    return null;
  }
  String? emailValidator(String? value) {
    if(value == null || value.isEmpty) {
      return 'email không được để trống';
    }
    return null;
  }
  String? passValidator(String? value) {
    if(value == null || value.isEmpty) {
      return 'password không được để trống';
    }
    return null;
  }

}