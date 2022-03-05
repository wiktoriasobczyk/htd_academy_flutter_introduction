import 'package:flutter/material.dart';

class MyFistWidget extends StatelessWidget {
  final String title;
  const MyFistWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}
