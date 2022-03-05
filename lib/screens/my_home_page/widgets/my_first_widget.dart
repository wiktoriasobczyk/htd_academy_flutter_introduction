import 'package:flutter/material.dart';

class MyFistWidget extends StatelessWidget {
  const MyFistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('My first widget'),
    );
  }
}
