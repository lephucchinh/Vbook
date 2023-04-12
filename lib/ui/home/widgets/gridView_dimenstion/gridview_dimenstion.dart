
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

    return SizedBox(
      height: 400,
      child: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Cài đặt",textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            const Divider(),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                   Expanded(
                    child: ListTile(
                      dense: true,
                      leading: Icon(Icons.folder_outlined),
                      title: Text("Nhập truyện",),
                    ),
                  ),
                   VerticalDivider(),
                   Expanded(
                    child: ListTile(
                      dense: true,
                      leading: Icon(Icons.ac_unit_outlined),
                      title: Text("Trình duyệt",),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              dense: true,
              leading: Text("Kiểu kệ sách"),
            ),
            const Divider(),
            ListTile(
              dense: true,
              leading: Text("Cột"),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_circle_outline),
                  ),
                  const SizedBox(width: 17,),
                  Text('1'),
                  const SizedBox(width: 17,),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
                  ),

                ],
              ),
            ),
            const Divider(),
            ListTile(
              dense: true,
              leading: Text("Sắp xếp theo"),
              trailing: Icon(Icons.navigate_next),
              title: Text("Chương mới",textAlign: TextAlign.end,),
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
      ),
    );
  }
}
