import 'package:flutter/material.dart';

class Storage_folders extends StatelessWidget {
  final String ListTitle;
  final String ListSubtitle;
  const Storage_folders({
    super.key, required this.ListTitle, required this.ListSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.folder,
        size: 60,
        color: Color.fromRGBO(46, 64, 234, 1),
      ),
      title: Text(ListTitle,style: TextStyle(
        color: Colors.white,
        fontSize: 16
      ),
      ),
      subtitle: Text(ListSubtitle + "  |  18/01/2024",
          style: TextStyle(
        color: Colors.white38,
      ),
      ),
    );
  }
}
