import 'package:flutter/material.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

import 'grid_view.dart';

class Categories_View extends StatelessWidget {
  const Categories_View({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
