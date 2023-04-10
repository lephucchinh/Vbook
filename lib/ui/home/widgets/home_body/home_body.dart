import 'package:flutter/material.dart';
import 'package:vbook/utils/data_noval.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: true,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 10,
      ),
      itemCount: novelData.length,
      itemBuilder: (context, int index) => GestureDetector(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image(
                image: AssetImage(novelData[index]["image"]!),
                fit: BoxFit.fill,
              ),
            ),
            Text(
              novelData[index]['title']!,
              textAlign: TextAlign.center,
            )
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
