import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:p1/Widgets/List%20Tiles%20widgets/list_tiles.dart';

class ListTile_1 extends StatelessWidget {
  const ListTile_1({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsive.widthPercent(95),
      height: responsive.heightPercent(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(26, 26, 26, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          list_tiles(
            iconColor: Colors.green,
            listIcon: FontAwesomeIcons.whatsappSquare,
            titleList: "Whatsapp",
            trailIcon: FontAwesomeIcons.chevronRight,
          ),
          list_tiles(
            iconColor: Colors.green,
            listIcon: FontAwesomeIcons.download,
            titleList: "Download",
            trailIcon: FontAwesomeIcons.chevronRight,
          ),
          list_tiles(
            iconColor: Color.fromRGBO(46, 64, 234, 1),
            listIcon: FontAwesomeIcons.bluetooth,
            titleList: "Bluetooth",
            trailIcon: FontAwesomeIcons.chevronRight,
          ),
        ],
      ),
    );
  }
}
