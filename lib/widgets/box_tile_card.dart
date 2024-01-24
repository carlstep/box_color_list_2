import 'package:box_color_list_2/models/box_tile_model.dart';
import 'package:flutter/material.dart';

class BoxTileCard extends StatelessWidget {
  const BoxTileCard({
    super.key,
    required this.boxTile,
  });

  final BoxTile boxTile;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: boxTile.boxTileColor,
                ),
                Text(boxTile.boxTileName),
                Text(boxTile.boxTileIndex),
                Text(boxTile.boxTileValue.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: boxTile.isActive,
                  onChanged: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
