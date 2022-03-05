import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_academy/screens/my_home_page/widgets/my_first_widget.dart';

class ListElement {
  final String title;
  final String subtitle;

  ListElement(
    this.title,
    this.subtitle,
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ListElement> elements = [];
  late Faker faker;

  @override
  void initState() {
    faker = Faker();
    super.initState();
  }

  void _addElement() {
    setState(() {
      elements.add(ListElement(faker.person.name(), faker.internet.email()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, int index) {
          final ListElement element = elements[index];
          return MyFistWidget(title: element.title, subtitle: element.subtitle);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addElement,
        child: const Icon(Icons.add),
      ),
    );
  }
}
