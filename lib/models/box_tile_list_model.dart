import 'package:box_color_list_2/models/box_tile_model.dart';
import 'package:flutter/material.dart';

class BoxTileList extends ChangeNotifier {
  final List<BoxTile> _boxList = [
    BoxTile(
      boxTileColor: Colors.red,
      boxTileName: 'BoxTileOne',
      boxTileIndex: '0001',
      boxTileValue: 1.25,
    ),
    BoxTile(
      boxTileColor: Colors.blue,
      boxTileName: 'BoxTileTwo',
      boxTileIndex: '0002',
      boxTileValue: 1.10,
    ),
    BoxTile(
      boxTileColor: Colors.yellow,
      boxTileName: 'BoxTileThree',
      boxTileIndex: '0003',
      boxTileValue: 0.90,
    ),
    BoxTile(
      boxTileColor: Colors.green,
      boxTileName: 'BoxTileFour',
      boxTileIndex: '0004',
      boxTileValue: 1.50,
    ),
  ];

  List<BoxTile> _displayBoxList = [];

  List<BoxTile> get boxList => _boxList;

  List<BoxTile> get displayBoxList => _displayBoxList;
}
