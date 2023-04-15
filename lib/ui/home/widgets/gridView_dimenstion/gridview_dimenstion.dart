import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbook/ui/home/bloc/home_page_bloc.dart';

class GridViewDimension extends StatefulWidget {
  const GridViewDimension(this.homePageBloc, {super.key});

  final HomePageBloc homePageBloc;

  @override
  State<GridViewDimension> createState() => _GridViewDimensionState();
}

class _GridViewDimensionState extends State<GridViewDimension> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.homePageBloc,
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            const ListTile(
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
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
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
                          child: const Icon(Icons.grid_view_sharp),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          child: const Icon(Icons.grid_view),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          child: const Icon(Icons.view_agenda_rounded),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          child: const Icon(Icons.view_list_outlined),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              dense: true,
              leading: const Text("Cột"),
              title: BlocBuilder<HomePageBloc, HomePageState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: state.column > 2
                            ? () => widget.homePageBloc
                                .add(DicreaseColumnPressed(context))
                            : null,
                        icon: const Icon(
                          Icons.remove_circle_outline,
                        ),
                        color: Colors.black87,
                      ),
                      const SizedBox(width: 17),
                      Text('${state.column}'),
                      const SizedBox(width: 17),
                      IconButton(
                        onPressed: state.column < 4
                            ? () => widget.homePageBloc
                                .add(IncreaseColumnPressed(context))
                            : null,
                        icon: const Icon(
                          Icons.add_circle_outline,

                        ),
                        color: Colors.black87,
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(),
            const ListTile(
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
              leading: const Text("Hiển thị header"),
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
            const ListTile(
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
