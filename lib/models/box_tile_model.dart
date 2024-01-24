import 'package:flutter/material.dart';

class BoxTile {
  final Color boxTileColor;
  final String boxTileName;
  final String boxTileIndex;
  final double boxTileValue;
  final bool isActive;

  BoxTile({
    required this.boxTileColor,
    required this.boxTileName,
    required this.boxTileIndex,
    required this.boxTileValue,
    this.isActive = false,
  });
}
