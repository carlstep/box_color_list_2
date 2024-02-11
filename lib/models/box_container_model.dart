import 'package:flutter/material.dart';

class BoxContainerModel {
  final String boxContainerId;
  final Color boxContainerColor;
  final IconData? deleteContainerBox;
  // final BoxTile boxTile;

  BoxContainerModel(
      // this.boxTile,
      {
    required this.boxContainerId,
    required this.boxContainerColor,
    this.deleteContainerBox = Icons.delete,
  });
}
