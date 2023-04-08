import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingAccount extends StatefulWidget {

  const SettingAccount({Key? key}) : super(key: key);

  @override
  State<SettingAccount> createState() => _SettingAccountState();
}

class _SettingAccountState extends State<SettingAccount> {
  @override
  bool light = true;
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Cài đặt",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
             const ListTile(
              leading:  Text("CHUNG",
              style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,),),
            ),
            const SizedBox(
               child: Divider(
                height: 1,
                thickness: 2,
                indent: 17,
                endIndent: 380,
                color: Colors.black,
              ),
            ),
            const ListTile(
              title: Text("chủ đề",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),
              ),
            ),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        )),
                    onPressed: () {},
                  ),

                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Chủ đề tối"),
                  Text("Tối",
                  style: TextStyle(
                    fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ngôn ngữ"),
                  Text("Theo hệ thống",style: TextStyle(
                      fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Phông chữ"),
                  Text("Nunito",style: TextStyle(
                      fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tự động mở truyện vừa đọc"),
                ],
              ),
              trailing: Switch(
                  value: light,
                  onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              })
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cập nhật chương mới"),
                  Text("không kiểm tra",
                    style: TextStyle(
                      fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Làm mờ ảnh bìa truyện nsfw"),
                ],
              ),
              trailing: Switch(
                  value: light,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  }),
            ),
            const ListTile(
              title:  Text("KẾT NỐI",
                style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,),),
            ),
            const SizedBox(
              child: Divider(
                height: 1,
                thickness: 2,
                indent: 17,
                endIndent: 375,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Thời gian nghỉ"),
                  Text("100ms",
                    style: TextStyle(
                        fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Số luồng tải xuống"),
                  Text("2 luồng",
                    style: TextStyle(
                        fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tải lại khi bị lỗi"),
                  Text("3",
                    style: TextStyle(
                        fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("DNS over HTTPS"),
                  Text("không",
                    style: TextStyle(
                        fontSize: 12),),
                ],
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              title:  Text("DỊCH",
                style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,),),
            ),
            const SizedBox(
              child: Divider(
                height: 1,
                thickness: 2,
                indent: 17,
                endIndent: 395,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tự động dịch nguồn Trung"),
                ],
              ),
              trailing: Switch(
                  value: light,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  })
            ),
          ],
        ),
      ),
    );
  }
}
