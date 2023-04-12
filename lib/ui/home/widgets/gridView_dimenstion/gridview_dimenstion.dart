import 'package:flutter/material.dart';

class gridViewDimenstion extends StatefulWidget {
  const gridViewDimenstion({Key? key}) : super(key: key);

  @override
  State<gridViewDimenstion> createState() => _gridViewDimenstionState();
}

class _gridViewDimenstionState extends State<gridViewDimenstion> {
  @override
  bool change = false;

  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 20),
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              "Cài đặt",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          const Divider(),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  child: ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.folder_outlined,
                      color: Colors.black87,
                    ),
                    title: Text(
                      "Nhập truyện",
                    ),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.ac_unit_outlined,
                      color: Colors.black87,
                    ),
                    title: Text(
                      "Trình duyệt",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Kiểu kệ sách",
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Icon(Icons.grid_view_sharp),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        child: Icon(Icons.grid_view),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        child: Icon(Icons.view_agenda_rounded),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        child: Icon(Icons.view_list_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            dense: true,
            leading: Text("Cột"),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_circle_outline,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Text('1'),
                const SizedBox(
                  width: 17,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            dense: true,
            leading: Text("Sắp xếp theo"),
            trailing: Icon(Icons.navigate_next),
            title: Text(
              "Chương mới",
              textAlign: TextAlign.end,
            ),
          ),
          const Divider(),
          ListTile(
            dense: true,
            leading: Text("Hiển thị header"),
            trailing: Switch(
              value: change,
              onChanged: (bool value) {
                setState(() {
                  change = value;
                });
              },
            ),
          ),
          const Divider(),
          ListTile(
            dense: true,
            leading: Text("Quản lý danh mục"),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
