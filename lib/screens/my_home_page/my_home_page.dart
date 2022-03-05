import 'package:flutter/material.dart';
import 'package:flutter_academy/screens/my_home_page/widgets/my_first_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: MyFistWidget(
          title: 'My custom widget',
          subtitle: 'Flutter is awesome',
        ),
      ),
    );
  }
}
