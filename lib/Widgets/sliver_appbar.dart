import 'package:flutter/material.dart';
import 'package:p1/Widgets/search_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class sliver_appbar extends StatelessWidget {
  const sliver_appbar({
    super.key,
    required bool pinned,
    required bool snap,
    required bool floating,
  })  : _pinned = pinned,
        _snap = snap,
        _floating = floating;

  final bool _pinned;
  final bool _snap;
  final bool _floating;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Colors.blue,
      forceMaterialTransparency: false,
      backgroundColor: Colors.black,
      pinned: this._pinned,
      snap: this._snap,
      floating: this._floating,
      actions: [
        Icon(
          Icons.more_horiz,
        ),
      ],
      expandedHeight: 185.0,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 2,
        titlePadding: EdgeInsets.all(10),
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Files"),
              search_bar().pOnly(top: 4, bottom: 10),
            ],
          ),
        ),
      ),
    );
  }
}
