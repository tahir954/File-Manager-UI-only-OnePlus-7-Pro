import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.red,
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            foregroundColor: Colors.blue,
            forceMaterialTransparency: false,
            backgroundColor: Colors.black54,
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            actions: [
              Icon(
                Icons.more_horiz,
              ),
            ],
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 2,
              titlePadding: EdgeInsets.all(10),
              background: Image.asset(
                "assets/images/img.png",
                fit: BoxFit.fill,
              ),
              title: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Files"),
                    SearchBar(
                      constraints: BoxConstraints(minHeight: 0.0,maxHeight: 30),
                      leading: Icon(Icons.search_sharp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.

          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
          SliverToBoxAdapter(
            child: Icon(
              Icons.local_fire_department_outlined,
              color: Colors.yellow,
              size: 55,
            ),
          ),
        ],
      ),
      bottomNavigationBar: this._getBottomAppBar(),
    );
  }

  Widget _getBottomAppBar() {
    return BottomAppBar(
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('pinned'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._pinned = val;
                  });
                },
                value: this._pinned,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('snap'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._snap = val;
                    // **Snapping only applies when the app bar is floating.**
                    this._floating = this._floating || val;
                  });
                },
                value: this._snap,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('floating'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._floating = val;
                    if (this._snap == true) {
                      if (this._floating != true) {
                        this._snap = false;
                      }
                    }
                  });
                },
                value: this._floating,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
