import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:p1/Widgets/list_tiles.dart';
import 'package:p1/Widgets/sliver_appbar.dart';
import 'package:p1/Widgets/storage_box.dart';
import 'package:p1/Widgets/whole_gridview.dart';
import 'package:p1/Widgets/bottom_navigation_bar.dart';
import 'package:p1/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          sliver_appbar(pinned: _pinned, snap: _snap, floating: _floating),
          SliverFillRemaining(
            child: Column(
              children: [
                storage_box(responsive: responsive),
                SizedBox(
                  height: 10,
                ),
                whole_gridview(responsive: responsive),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sources',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20,
                    ),
                  ),
                ).pOnly(bottom: 10),
                Container(
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
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
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
                ),
              ],
            ),
          ),
        ],
      ).pOnly(left: 10, right: 10),
      bottomNavigationBar: Container(
        height: responsive.heightPercent(8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
          bottom_navigation_bar(
            bottomIcon: Icon(
              Icons.folder_copy_outlined,
              color: Colors.white,
            ),
            label: "Files",
          ),
          bottom_navigation_bar(
            bottomIcon: Icon(
              FontAwesomeIcons.clock,
              color: Colors.white,
            ),
            label: "Recent",
          ),
          bottom_navigation_bar(
            bottomIcon: Icon(
              FontAwesomeIcons.tags,
              color: Colors.white,
            ),
            label: "Tag",
          ),
        ]),
      ),
    );
  }
}
