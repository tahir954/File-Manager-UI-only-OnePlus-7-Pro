import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:p1/Routes/routes.dart';
import 'package:p1/Widgets/list_tiles.dart';
import 'package:p1/Widgets/sliver_appbar.dart';
import 'package:p1/Widgets/storage_box.dart';
import 'package:p1/Widgets/bottom_navigation_bar.dart';
import 'package:p1/pages/phone_storage.dart';
import 'package:p1/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Widgets/grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics:BouncingScrollPhysics(),
        slivers: <Widget>[
          sliver_appbar(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                GestureDetector(

                    child: storage_box(responsive: responsive),
                onTap: () => MyRoutes.instance.push(widget: Phone_Storage(), context: context),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: responsive.widthPercent(100),
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
                ).pOnly(left: 2,right: 2),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sources',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 20,
                    ),
                  ),
                ).pOnly(bottom: 10,left: 15),
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
                ).pOnly(bottom: 50),
              ],
            ),
          ),
        ],
      ).pOnly(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(
            color: Colors.white60,
            width: 0.1
          ))
        ),
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
                bottomIcon:FontAwesomeIcons.tags,
                label: "Tag",
              ),
            ]
        ),
      ),
    );
  }
}
