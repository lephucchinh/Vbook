import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/ui/account/widgets/login_dialog/bloc/login_bloc.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog._();

  static Future show(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => const LoginDialog._(),
      );

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return AlertDialog(
            title: const Center(
              child: Text(
                "Đăng nhập",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: state.loginFormModal.emailController,
                        validator: state.loginFormModal.emailValidator,
                        onChanged: (_) => formKey.currentState?.validate(),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: state.loginFormModal.passController,
                        validator: state.loginFormModal.passValidator,
                        onChanged: (_) => formKey.currentState?.validate(),
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Mật khẩu",
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Quên mật khẩu"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {
                    context.read<LoginBloc>().add(
                          LoginButtonPressed(context, formKey: formKey),
                        );
                  },
                  child: const Center(
                    child: Text(
                      "Đăng nhập",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        "Đăng nhập bằng google",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
