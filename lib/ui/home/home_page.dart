import 'package:flutter/material.dart';

import 'widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        title: Row(children: [
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/8-1626444967.jpg"),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(
                    MediaQuery.of(context).size.width * 0.08,
                    MediaQuery.of(context).size.height * 0.1))),
            onPressed: () {},
            child: const Text(
              'Kệ sách',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          TextButton(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(
                    MediaQuery.of(context).size.width * 0.08,
                    MediaQuery.of(context).size.height * 0.1))),
            onPressed: () {},
            child: const Text(
              'Lịch sử',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ]),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: const HomeBody(),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          if (index == 3) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const SettingPage()),
            // );
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
}
