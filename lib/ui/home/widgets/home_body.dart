import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 30,
      crossAxisSpacing: 10,
      crossAxisCount: 3,
      childAspectRatio: 1 / 2,
      children: [
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Image.asset(
                'assets/images/Cái này thích khách có bệnh.jpg',
                fit: BoxFit.fill,
              ),
              Text(
                'Cái này thích khách có bệnh',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: const [
              Image(
                  image: AssetImage('assets/images/Hiệp đồ huyễn thế lục.jpg')),
              Text(
                "Hiệp đồ huyễn thế lục",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: const [
              Image(
                  image:
                      AssetImage('assets/images/Kiếm hiệp phong vân trí.webp')),
              Text(
                "Kiếm hiệp phong vân trí",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: const [
              Image(
                  image: AssetImage(
                      'assets/images/Thập phương loạn thế , nhân gian võ tánh.jpg')),
              Text(
                "Thập phương loạn thế , nhân gian võ tánh",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: const [
              Image(image: AssetImage('assets/images/Tặc nhân hưu cẩu.webp')),
              Text(
                "Tặc nhân hưu cẩu",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
