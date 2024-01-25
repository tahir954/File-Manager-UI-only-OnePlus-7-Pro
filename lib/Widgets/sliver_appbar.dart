import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class sliver_appbar extends StatelessWidget {
  const sliver_appbar({
    super.key,
  }) ;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Colors.black,
      forceMaterialTransparency: false,
      backgroundColor: Colors.black,
      pinned:true,
      snap: false,
      floating: false,
      actions: [
        Icon(
          Icons.more_horiz,
          color: Colors.white,
        ).pOnly(right: 10),
      ],
      expandedHeight: 130.0,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 2,
        titlePadding: EdgeInsets.all(10),
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Files"),
            ],
          ),
        ),
      ),
    );
  }
}
