import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/ui/account/widgets/setting/setting.dart';

import 'bloc/account_bloc.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Cá nhân",
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              BlocBuilder<AppBloc, AppState>(
                builder: (context, state) {
                  return Visibility(
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
                  );
                },
              )
            ],
          ),
          body: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.043,
                ),
                BlocBuilder<AppBloc, AppState>(
                  builder: (context, state) {
                    return Visibility(
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
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.043,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black12),
                  width: MediaQuery.of(context).size.width * 1,
                  child: const ListTile(
                    title: Text(
                      'Ứng dụng',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.library_books_outlined,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.61),
                      child: Text(
                        "Lưu trữ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.insert_chart_outlined,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.58),
                      child: Text(
                        "Thống kê",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pie_chart_outline,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.505),
                      child: Text(
                        "Phần mở rộng",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings_backup_restore,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.434),
                      child: Text(
                        "Đồng bộ & sao lưu",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SettingAccount()),
                      );
                    },
                    icon: Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.62),
                      child: Text(
                        "Cài đặt",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black12),
                  width: MediaQuery.of(context).size.width * 1,
                  child: const ListTile(
                    title: Text(
                      "Kết nối",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.link_outlined,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.42),
                      child: Text(
                        "Mời bạn bè sử dụng",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.48),
                      child: Text(
                        "Theo rõi fanpage",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.discord,
                      color: Colors.black,
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.47),
                      child: Text(
                        "Tham gia discord",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
