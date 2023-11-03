import 'package:flutter/material.dart';

class ReorderableListWidget extends StatefulWidget {
  final bool verticalOrientation;
  final List<Widget> items;

  ReorderableListWidget({
    this.verticalOrientation = true,
    required this.items,
  });

  @override
  _ReorderableListWidgetState createState() => _ReorderableListWidgetState();
}

class _ReorderableListWidgetState extends State<ReorderableListWidget> {
  late bool _verticalOrientation;
  late List<Widget> _reorderedList;

  @override
  void initState() {
    super.initState();
    _verticalOrientation = widget.verticalOrientation;
    _reorderedList = List.from(widget.items);
  }

  @override
  Widget build(BuildContext context) {
    final bool orientation = widget.verticalOrientation;
    List<Widget> childrenList = [];

    if (orientation) {
      childrenList = _reorderedList.asMap().entries.map(
        (entry) {
          final index = entry.key;
          final widget = entry.value;
          return ListTile(
            key: Key('$index'),
            title: widget,
            tileColor: Colors.transparent,
          );
        },
      ).toList();
    } else {
      ListView(
        scrollDirection: Axis.horizontal,
        children: _reorderedList.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final widget = entry.value;

            return SizedBox(
              width: 150,
              child: ListTile(
                key: Key('$index'),
                title: widget,
                tileColor: Colors.transparent,
              ),
            );
          },
        ).toList(),
      );
    }

    return ReorderableListView(
      buildDefaultDragHandles: true,
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final Widget item = _reorderedList.removeAt(oldIndex);
          _reorderedList.insert(newIndex, item);
        });
      },
      children: childrenList,
    );
  }
}
