import 'package:box_color_list_2/widgets/box_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:box_color_list_2/models/box_tile_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('box color list'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('List of BoxTiles'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return BoxTileCard(
                        boxTile: BoxTile(
                          boxTileColor: Colors.red,
                          boxTileName: 'BoxTileOne',
                          boxTileIndex: '0001',
                          boxTileValue: 1.25,
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
