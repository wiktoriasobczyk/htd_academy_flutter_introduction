import 'package:flutter/material.dart';

class MyFistWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onRemove;
  const MyFistWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person_outline),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        onPressed: onRemove,
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
