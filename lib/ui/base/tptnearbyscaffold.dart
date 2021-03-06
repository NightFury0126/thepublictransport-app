import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:thepublictransport_app/ui/colors/colorconstants.dart';
import 'package:thepublictransport_app/ui/animations/showup.dart';
import 'package:thepublictransport_app/pages/nearby_search.dart';

class TPTNearbyScaffold extends StatefulWidget {
  TPTNearbyScaffold({this.body, this.title});

  final Widget body;
  final String title;

  @override
  _TPTNearbyScaffoldState createState() => _TPTNearbyScaffoldState(this.body, this.title);
}

class _TPTNearbyScaffoldState extends State<TPTNearbyScaffold> {
  _TPTNearbyScaffoldState(this.body, this.title);

  final Widget body;
  final String title;

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).padding.left,
            MediaQuery.of(context).padding.top + 15,
            MediaQuery.of(context).padding.right,
            MediaQuery.of(context).padding.bottom
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new ShowUp(
                      delay: 100,
                      child: new Container(
                        padding: EdgeInsets.only(left: 15),
                        child: new Text(
                            "The Public Transport".toUpperCase(),
                            style: new TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.grey
                            )
                        ),
                      ),
                    ),
                    new ShowUp(
                      delay: 300,
                      child: new Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        child: new GradientText(
                          title,
                          style: new TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 35,
                              color: Colors.grey
                          ),
                          gradient: ColorConstants.tptgradient
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  padding: EdgeInsets.only(right: 15),
                  child: new IconButton(
                      icon: Icon(
                          Icons.search,
                          size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NearbySearchPage()));
                      }
                  ),
                )
              ],
            ),
            body
          ],
        ),
      ),
    );
  }
}