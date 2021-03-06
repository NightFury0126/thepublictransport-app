import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Searchbar extends StatefulWidget {
  Searchbar({@required this.text, @required this.onTap});

  final String text;
  final Function onTap;


  @override
  _SearchbarState createState() => _SearchbarState(this.text, this.onTap);
}

class _SearchbarState extends State<Searchbar> {
  _SearchbarState(this.text, this.onTap);

  final String text;
  final Function onTap;

  Widget build(BuildContext context) {
    return new Card(
      shape: new StadiumBorder(
        side: new BorderSide(
          width: 2.0,
          color: Colors.black
        )
      ),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      color: Colors.white,
      child: new InkWell(
        onTap: onTap,
        child: SizedBox(
            height: 50,
            child: new Container(
                padding: EdgeInsets.only(left: 17),
                child : new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                        this.text,
                        style: new TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17,
                          color: Colors.grey[600]
                        )
                    )
                  ],
                )
            )
        ),
      ),
    );
  }
}