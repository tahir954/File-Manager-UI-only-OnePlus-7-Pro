import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:p1/Widgets/list_tiles.dart';
import 'package:p1/Widgets/sliver_appbar.dart';
import 'package:p1/Widgets/storage_box.dart';
import 'package:p1/Widgets/bottom_navigation_bar.dart';
import 'package:p1/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Widgets/grid_view.dart';

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
            hasScrollBody: false,
            child: Column(
              children: [
                storage_box(responsive: responsive),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: responsive.widthPercent(93),
                  height: responsive.heightPercent(27),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Grid_View(
                              count: "316",
                              icon: Icons.image,
                              label: "Photos",
                            ),
                            Grid_View(
                              count: "78",
                              icon: Icons.video_camera_back_outlined,
                              label: "Videos",
                            ),
                            Grid_View(
                              count: "254",
                              icon: Icons.audiotrack_outlined,
                              label: "Audio",
                            ),
                          ],
                        ).pOnly(bottom: 10),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Grid_View(
                              count: "56",
                              icon: Icons.file_open,
                              label: "Documents",
                            ),
                            Grid_View(
                              count: "51",
                              icon: Icons.android_outlined,
                              label: "APKs",
                            ),
                            Grid_View(
                              count: "6",
                              icon: Icons.archive_outlined,
                              label: "Archives",
                            ),
                          ],
                        ).pOnly(bottom: 10),
                      ),
                    ],
                  ),
                ),
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
