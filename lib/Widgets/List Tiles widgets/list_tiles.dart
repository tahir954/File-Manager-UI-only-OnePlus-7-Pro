
import 'package:flutter/material.dart';

class list_tiles extends StatelessWidget {
  final IconData listIcon;
  final IconData trailIcon;
  final String titleList;
  final Color iconColor;
  const list_tiles({
    super.key, required this.listIcon, required this.trailIcon, required this.titleList, required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        listIcon,
        color: iconColor,
        size: 30,
      ),
      title: Text(
        titleList,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Icon(trailIcon),
    );
  }
}
