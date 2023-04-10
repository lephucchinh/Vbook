import 'package:flutter/material.dart';
import 'package:vbook/utils/data_noval.dart';

class homeHistory extends StatelessWidget {
  const homeHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Text(
            "HÔM NAY",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView.separated(
              itemCount: novelData.length,
              itemBuilder: (context, int index) => Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image(
                            image: AssetImage(novelData[index]["image"]!),
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(
                          novelData[index]["title"]!,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  novelData[index]["chapter"]!,
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                  novelData[index]["source"]!,
                                  style: const TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
              separatorBuilder: (context, int index) => const SizedBox(
                    height: 5,
                  )),
        ),
      ],
    );
  }
}
