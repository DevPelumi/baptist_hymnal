import 'package:flutter/material.dart';
import 'package:baptist_hymnal/List/english_hymn_list.dart';

class ResponsiveReading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green.shade300,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null)
            ],
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Responsive Reading',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: 'Alata',
                    fontWeight: FontWeight.w600),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/hymnal1.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, int i) => Card(
                child: ListTile(
                  leading: new CircleAvatar(
                      backgroundColor: Colors.green.shade300,
                      foregroundColor: Colors.white,
                      child: Text(
                        englishHymnData[i].hymnNumber,
                        style: TextStyle(
                            fontFamily: 'Alata', fontWeight: FontWeight.w600),
                      )),
                  title: new Text(
                    englishHymnData[i].hymnTitle,
                    style: TextStyle(
                      fontFamily: 'Alata',
                    ),
                  ),
                  trailing: IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.pink,
                      ),
                      onPressed: null),
                  onTap: () {},
                  onLongPress: () {
                    print(
                      Text("Long Pressed"),
                    );
                  },
                ),
              ),
              childCount: englishHymnData.length,
            ),
          )
        ],
      ),
    );
  }
}
