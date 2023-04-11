import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vbook/utils/colors_using.dart';

class SettingAccount extends StatefulWidget {
  const SettingAccount({Key? key}) : super(key: key);

  @override
  State<SettingAccount> createState() => _SettingAccountState();
}

class _SettingAccountState extends State<SettingAccount> {
  int selectedColor = 0;

  @override
  bool light = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Cài đặt",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 15),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const ListTile(
              leading: Text(
                "CHUNG",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 2,
              indent: 17,
              endIndent: 380,
              color: Colors.black,
            ),
            const ListTile(
              title: Text(
                "chủ đề",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            Container(
                height: 70,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorsUsing.colors.length,
                  itemBuilder: (context, index) => ElevatedButton(
                    child: selectedColor == index
                        ? Icon(Icons.check_box_outlined)
                        : SizedBox.shrink(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorsUsing.colors[index],
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedColor = index;
                      });
                    },
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                )),
            const Divider(),
            ListTile(
              leading: Text("Chủ đề tối"),
              title: Text(
                "Tối",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
              leading: Text("Ngôn ngữ"),
              title: Text(
                "Theo hệ thống",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
              leading: Text("Phông chữ"),
              title: Text(
                "Nunito",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
                leading: Text("Tự động mở truyện vừa đọc"),
                trailing: Switch(
                    value: light,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    })),
            const Divider(),
            ListTile(
              leading: Text("Cập nhật chương mới"),
              title: Text(
                "không kiểm tra",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
              leading: Text("Làm mờ ảnh bìa truyện nsfw"),
              trailing: Switch(
                  value: light,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  }),
            ),
            const Divider(),
            const ListTile(
              title: Text(
                "KẾT NỐI",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 2,
              indent: 17,
              endIndent: 375,
              color: Colors.black,
            ),
            ListTile(
              leading: Text("Thời gian nghỉ"),
              title: Text(
                "100ms",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
              leading: Text("Số luồng tải xuống"),
              title: Text(
                "2 luồng",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
              leading: Text("Tải lại khi bị lỗi"),
              title: Text(
                "3",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            ListTile(
              leading: Text("DNS over HTTPS"),
              title: Text(
                "không",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.end,
              ),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            const ListTile(
              title: Text(
                "DỊCH",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 2,
              indent: 17,
              endIndent: 395,
              color: Colors.black,
            ),
            ListTile(
                title: Text("Tự động dịch nguồn Trung",textAlign: TextAlign.start,),
                trailing: Switch(
                    value: light,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    })),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
