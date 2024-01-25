import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:p1/Widgets/Bottom%20Navigation/bottom_navigation_bar.dart';

class Bottom_NavigationBar extends StatelessWidget {
  const Bottom_NavigationBar({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white60, width: 0.1))),
      height: responsive.heightPercent(7.35),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            bottom_navigation_bar(
              bottomIcon: Icons.folder_copy_outlined,
              label: "Files",
            ),
            bottom_navigation_bar(
              bottomIcon: FontAwesomeIcons.clock,
              label: "Recent",
            ),
            bottom_navigation_bar(
              bottomIcon: FontAwesomeIcons.tags,
              label: "Tag",
            ),
          ]),
    );
  }
}
