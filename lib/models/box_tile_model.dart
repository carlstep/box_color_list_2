import 'package:flutter/material.dart';

class BoxTile {
  final Color boxTileColor;
  final String boxTileName;
  final String boxTileId;
  final double boxTileValue;
  final bool isActive;

  BoxTile({
    required this.boxTileColor,
    required this.boxTileName,
    required this.boxTileId,
    required this.boxTileValue,
    this.isActive = false,
  });
}
