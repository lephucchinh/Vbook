import 'package:flutter/material.dart';

class gridViewDimenstion extends StatelessWidget {
  const gridViewDimenstion({Key? key}) : super(key: key);

  @override
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
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    dense: true,
                    leading: Icon(Icons.folder),
                    title: Text("Nhập truyện",textAlign: TextAlign.start,),
                  ),
                ),
                const VerticalDivider(),
                Expanded(
                  child: ListTile(
                    dense: true,
                    leading: Icon(Icons.folder),
                    title: Text("Trình duyệt",textAlign: TextAlign.start,),
                  ),
                ),
              ],
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
