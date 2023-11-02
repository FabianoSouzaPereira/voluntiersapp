import 'package:flutter/material.dart';

class ReorderableListWidget extends StatefulWidget {
  final List<Widget> items;

  ReorderableListWidget({required this.items});

  @override
  _ReorderableListWidgetState createState() => _ReorderableListWidgetState();
}

class _ReorderableListWidgetState extends State<ReorderableListWidget> {
  late List<Widget> _reorderedList;

  @override
  void initState() {
    super.initState();
    _reorderedList = List.from(widget.items);
  }

  @override
  Widget build(BuildContext context) {
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
      children: _reorderedList.asMap().entries.map((entry) {
        final index = entry.key;
        final widget = entry.value;
        return ListTile(
          key: Key('$index'),
          title: widget,
          tileColor: Colors.transparent,
        );
      }).toList(),
    );
  }
}
