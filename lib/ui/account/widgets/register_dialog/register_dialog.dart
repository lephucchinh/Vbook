import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/ui/account/widgets/register_dialog/bloc/register_bloc.dart';

class RegisterDialog extends StatelessWidget {
  const RegisterDialog._();

  static Future show(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => const RegisterDialog._(),
      );

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return AlertDialog(
            title: const Center(
                child: Text(
              "Đăng ký",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            )),
            content: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: state.registerFormModal.accountController,
                    validator: state.registerFormModal.accountValidator,
                    onChanged: (_) => formKey.currentState?.validate(),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Tên hiển thị",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: state.registerFormModal.emailController,
                    validator: state.registerFormModal.emailValidator,
                    onChanged: (_) => formKey.currentState?.validate(),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: state.registerFormModal.passController,
                    validator: state.registerFormModal.passValidator,
                    onChanged: (_) => formKey.currentState?.validate(),
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Mật khẩu",
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepPurple)),
                        onPressed: () {
                          context.read<RegisterBloc>().add(
                                RegisterButtonPressed(context,
                                    formKey: formKey),
                              );
                        },
                        child: const Text(
                          "Đăng ký",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
