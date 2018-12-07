import 'package:flutter/material.dart';

import "category.dart";

class CategoryRoute extends StatelessWidget {
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _categoryIcons = <IconData>[
    Icons.send,
    Icons.settings,
    Icons.accessibility,
    Icons.backup,
    Icons.cake,
    Icons.dashboard,
    Icons.edit,
    Icons.face,
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        title: _categoryNames[i],
        selectColor: _baseColors[i],
        icon: _categoryIcons[i],
      ));
    }

    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 10.0,
      title: Text(
        'Unit',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24.0,
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
