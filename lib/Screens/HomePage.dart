import 'package:flutter/material.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:p1/Widgets/Bottom%20Navigation/bottom__navigation_bar.dart';
import 'package:p1/Screens/phone_storage.dart';
import 'package:p1/Widgets/Categories%20View%20Widgets/categories__view.dart';
import 'package:p1/Widgets/List%20Tiles%20widgets/list_tile_1.dart';
import 'package:p1/Widgets/List%20Tiles%20widgets/list_tile_2.dart';
import 'package:p1/Widgets/Search%20Bar%20Widgets/search_bar_widget.dart';
import 'package:p1/Widgets/sliver_appbar.dart';
import 'package:p1/Widgets/storage_box.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Constants/Routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController customScrollController = ScrollController();

  /// initial Search Bar height
  double _searchBarHeight = 45.0; // Initial height
  /// initialize the Controller
  @override
  void initState() {
    super.initState();
    customScrollController.addListener(_scrollListener);
  }

  /// Method for SearchBar Animation to listen Scrolling
  void _scrollListener() {
    setState(() {
      _searchBarHeight = customScrollController.offset > 30
          ? customScrollController.offset / 4
          : 45.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        controller: customScrollController,
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          /// AppBar Here
          sliver_appbar(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                /// Search Bar -------------------------------
                Search_bar_Widget(searchBarHeight: _searchBarHeight),

                /// Blue Device Storage Container -------------------------------
                GestureDetector(
                  child: storage_box(responsive: responsive),
                  onTap: () => MyRoutes.instance.push(
                    widget: Phone_Storage(),
                    context: context,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                /// Categories View -------------------------------
                Categories_View(responsive: responsive)
                    .pOnly(left: 2, right: 2),

                /// Sou
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'SOURCES',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 13,
                    ),
                  ),
                ).pOnly(bottom: 10, left: 15),

                /// ListTiles For WhatsApp, Downloads etc -------------------------------
                ListTile_1(responsive: responsive),
                SizedBox(
                  height: 12,
                ),

                /// ListTiles For Private safe,recently Deleted -------------------------------
                ListTile_2(responsive: responsive).pOnly(bottom: 50),
              ],
            ),
          ),
        ],
      ).pOnly(),
      ///Bottom_NavigationBar  -------------------------------
      bottomNavigationBar: Bottom_NavigationBar(responsive: responsive),
    );
  }
}
