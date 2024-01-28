import 'package:box_color_list_2/models/box_container_model.dart';
import 'package:box_color_list_2/models/box_tile_list_model.dart';

import 'package:flutter/material.dart';
import 'package:box_color_list_2/models/box_tile_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BoxContainerModel> _boxContainerList = [];

  void _addBoxContainer() {
    if (_boxContainerList.length <= 3) {
      setState(() {
        _boxContainerList.add(
          BoxContainerModel(
            boxContainerId: '${_boxContainerList.length}',
            boxContainerColor: Colors.amber.shade100,
          ),
        );
      });
      print('_addBoxContainer ${_boxContainerList.length}');
    }
  }

  void _deleteBoxContainer(int index) {
    setState(() {
      _boxContainerList.removeAt(index);
    });
    print('_deleteBoxContainer - ${[index + 1]}');
  }

  showFloatingActionButton() {
    if (_boxContainerList.length <= 2) {
      return FloatingActionButton(
        onPressed: _addBoxContainer,
        child: const Icon(Icons.add),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('box color list'),
      ),
      body: Consumer<BoxTileList>(
        builder: (context, value, child) => SafeArea(
          child: Column(
            children: [
              Center(
                child: Text('List of BoxTiles'),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _boxContainerList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          key: Key('$index'),
                          title: Text('Item ${_boxContainerList[index]}'),
                          tileColor: Colors.grey.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          trailing: _boxContainerList.length >= 2
                              ? IconButton(
                                  onPressed: () => _deleteBoxContainer(index),
                                  icon: Icon(Icons.delete),
                                )
                              : null,
                          subtitle: BoxTileContainer(
                            boxTile: value.boxList[index],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: showFloatingActionButton(),
    );
  }
}

class BoxTileContainer extends StatelessWidget {
  final BoxTile boxTile;
  const BoxTileContainer({
    super.key,
    required this.boxTile,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey.shade100,
      leading: GestureDetector(
        // TODO - onTap to showModalBottomSheet
        onTap: () {},
        child: CircleAvatar(
          radius: 20,
          backgroundColor: boxTile.boxTileColor,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(boxTile.boxTileIndex),
          SizedBox(
            width: 10,
          ),
          Text(boxTile.boxTileName),
          SizedBox(
            width: 10,
          ),
          Text(boxTile.boxTileValue.toString()),
        ],
      ),
    );
  }
}
