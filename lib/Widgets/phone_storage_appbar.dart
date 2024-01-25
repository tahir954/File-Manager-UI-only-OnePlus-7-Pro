import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class phone_storage_appbar extends StatelessWidget {
  const phone_storage_appbar({
    super.key,
  }) ;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      actions: [
        Text(
          "Device Storage",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          width: 100,
        ),
        Icon(
          Icons.grid_view,
          color: Colors.white,
        ).pOnly(right: 15),
        Icon(
          Icons.search_rounded,
          color: Colors.white,
        ).pOnly(right: 15),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ).pOnly(right: 15),
      ],
    );
  }
}
