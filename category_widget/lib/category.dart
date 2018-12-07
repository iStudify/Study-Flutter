import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Color selectColor;
  final IconData icon;
  final String title;

  const Category(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.selectColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        height: 100,
        child: InkWell(
          borderRadius: BorderRadius.circular(50 / 2),
          highlightColor: this.selectColor,
          splashColor: this.selectColor,
          onTap: () {
            print('I was tapped!');
          },
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  this.icon,
                  size: 60,
                  color: this.selectColor,
                ),
              ),
              Text(
                this.title,
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
        ));
  }
}
