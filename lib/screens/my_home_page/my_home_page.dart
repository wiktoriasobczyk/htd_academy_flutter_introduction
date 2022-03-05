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

  @override
  void initState() {
    final Faker faker = Faker();

    elements.addAll([
      ListElement(faker.person.name(), faker.internet.email()),
      ListElement(faker.person.name(), faker.internet.email()),
      ListElement(faker.person.name(), faker.internet.email()),
    ]);
    super.initState();
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
            return MyFistWidget(
                title: element.title, subtitle: element.subtitle);
          }),
    );
  }
}
