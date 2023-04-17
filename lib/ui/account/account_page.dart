import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/ui/account/widgets/setting/setting.dart';

import 'bloc/account_bloc.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountBloc>(
      create: (context) => AccountBloc(),
      child: Builder(builder: (context) {
        return BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: state.color,
                elevation: 0,
                leading: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black87,
                    )),
                title: Text(
                  "Cá nhân",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                actions: [
                  Visibility(
                    visible: state.isLogin,
                    child: FilledButton(
                      onPressed: () {
                        context.read<AccountBloc>().add(
                              AccountLogoutButtonPressed(context),
                            );
                      },
                      child: const Text(
                        "Đăng xuất",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              body: Center(
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.043,
                    ),
                    Visibility(
                      visible: !state.isLogin,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  context
                                      .read<AccountBloc>()
                                      .add(AccountLoginButtonPressed(context));
                                },
                                child: const Text("Đăng nhập"),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  context.read<AccountBloc>().add(
                                      AccountRegisterButtonPressed(context));
                                },
                                child: const Text("Đăng ký"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.043,
                    ),
                    const ListTile(
                      tileColor: Colors.grey,
                      leading: Text(
                        'Ứng dụng',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.library_books_outlined,
                        color: Colors.black,
                      ),
                      title: Text("Lưu trữ"),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.insert_chart_outlined,
                        color: Colors.black,
                      ),
                      title: Text("Thống kê"),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.pie_chart_outline,
                        color: Colors.black,
                      ),
                      title: Text("Phần mở rộng"),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.settings_backup_restore,
                        color: Colors.black,
                      ),
                      title: Text("Đồng bộ & sao lưu"),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingAccount()),
                        );
                      },
                      leading: const Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                      ),
                      title: const Text("Cài đặt"),
                    ),
                    const ListTile(
                      tileColor: Colors.grey,
                      leading: Text(
                        "Kết nối",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.link_outlined,
                        color: Colors.black,
                      ),
                      title: Text("Mời bạn bè sử dụng"),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.facebook,
                        color: Colors.black,
                      ),
                      title: Text("Theo rõi fanpage"),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.discord,
                        color: Colors.black,
                      ),
                      title: Text("Tham gia discord"),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
