import 'package:flutter/material.dart';
import 'package:p1/Widgets/Internal%20Storage%20Page%20Widgets/internal__storage__folders.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class Phone_Storage extends StatelessWidget {
  const Phone_Storage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
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
      ),

      /// Under AppBar content
      body: Column(
        children: [
          Container(
            height: responsive.heightPercent(11),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Device Storage",
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white38,
                      size: 18,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                /// For Sorting the storage folders
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "29 items in totals",
                      style: TextStyle(color: Colors.white30, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          "Time Edited",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.white30,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ).pOnly(right: 10),

                /// Internal Storage Folders
              ],
            ),
          ).pOnly(left: 15, top: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Internal_Storage_Folders(),
            ),
          ),
        ],
      ),
    );
  }
}
