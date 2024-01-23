import 'package:flutter/material.dart';
import 'package:p1/Widgets/grid_view.dart';
import 'package:p1/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class whole_gridview extends StatelessWidget {
  const whole_gridview({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsive.widthPercent(93),
      height: responsive.heightPercent(33),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
       childAspectRatio: 1,
        crossAxisSpacing: 10,
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
      ),
    );
  }
}
