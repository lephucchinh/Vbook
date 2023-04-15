import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/app/bloc/app_bloc.dart';
import 'package:vbook/ui/home/bloc/home_page_bloc.dart';

import 'package:vbook/utils/colors_using.dart';
import '../account/account_page.dart';
import 'widgets/gridView_dimenstion/gridview_dimenstion.dart';
import 'widgets/home_body/home_body.dart';
import 'widgets/home_history/home_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homePageBloc = HomePageBloc();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return BlocProvider(
            create: (context) => homePageBloc,
            child: Builder(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: state.color,
                    elevation: 0,
                    leading: IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundImage:
                        AssetImage("assets/images/8-1626444967.jpg"),
                      ),
                    ),
                    title: const TabBar(
                      tabs: [
                        Tab(
                            child: Text(
                              "Kệ sách",
                              style: TextStyle(color: Colors.black),
                            )),
                        Tab(
                            child: Text(
                              "Lịch sử",
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.search_outlined),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.settings),
                        color: Colors.black,
                        onPressed: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              context: context,
                              constraints: const BoxConstraints(
                                maxWidth: 350,
                              ),
                              builder: (_) {
                                return GridViewDimension(homePageBloc);
                              });
                        },
                      ),
                    ],
                  ),
                  body: const TabBarView(
                    children: [
                      HomeBody(),
                      homeHistory(),
                    ],
                  ),
                  bottomNavigationBar: NavigationBar(
                    onDestinationSelected: (index) {
                      if (index == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountPage()),
                        );
                      }
                    },
                    destinations: const [
                      NavigationDestination(
                        icon: Icon(Icons.home_outlined),
                        label: 'Kệ sách',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.list_alt_outlined),
                        label: 'Khám phá',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.comment_outlined),
                        label: 'Bàn luận',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.person_outline),
                        label: 'Cá nhân',
                      ),
                    ],
                  ),
                );
              }
            ),
          );
        },
      ),
    );
  }
}
