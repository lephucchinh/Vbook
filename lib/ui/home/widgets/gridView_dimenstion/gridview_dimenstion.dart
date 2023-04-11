import 'package:flutter/material.dart';

class gridViewDimenstion extends StatelessWidget {
  const gridViewDimenstion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Modal BottomSheet'),
          ],
        ),
      ),
    );
  }
}
