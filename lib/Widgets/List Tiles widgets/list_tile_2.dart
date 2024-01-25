import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:p1/Widgets/List%20Tiles%20widgets/list_tiles.dart';

class ListTile_2 extends StatelessWidget {
  const ListTile_2({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsive.widthPercent(95),
      height: responsive.heightPercent(17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(26, 26, 26, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          list_tiles(
            iconColor: Color.fromRGBO(46, 64, 234, 1),
            listIcon: FontAwesomeIcons.lock,
            titleList: "Private Safe",
            trailIcon: FontAwesomeIcons.chevronRight,
          ),
          ListTile(
            leading: Icon(
              Icons.delete_outlined,
              color: Color.fromRGBO(46, 64, 234, 1),
              size: 35,
            ),
            subtitle: Text(
              '2 items | 94.5 MB',
              style: TextStyle(color: Colors.white38),
            ),
            title: Text(
              "Recently Deleted",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              FontAwesomeIcons.chevronRight,
            ),
          )
        ],
      ),
    );
  }
}
