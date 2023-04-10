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
        childAspectRatio: 1/2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 10,
      ),
      itemCount: imagesUsing.novelPhoto.length,
      itemBuilder: (context, int index) =>
          GestureDetector(
              child: Column(
                  children: [
                  imagesUsing.novelPhoto[index],
                  Text(
                    'Cái này thích khách có bệnh',
                    textAlign: TextAlign.center,
                  )
                ],
              ),

            onTap: () {},
          ),
    );
  }
}
