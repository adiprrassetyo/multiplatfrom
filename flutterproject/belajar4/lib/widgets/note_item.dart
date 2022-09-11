import 'dart:ffi';

import 'package:belajar4/presentations/custom_icon_icons.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatefulWidget {
  final String id;
  final String title;
  final String note;
  final bool isPinned;
  final Function(String id) toggleIsPinnedFn;
  NoteItem({
    @required this.id,
    @required this.title,
    @required this.note,
    @required this.isPinned,
    @required this.toggleIsPinnedFn,
  });
  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  bool _isPinned;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _isPinned = widget.isPinned;
    print(widget.title);
    return GridTile(
      header: Align(
        alignment: Alignment.topRight,
        child: IconButton(
          onPressed: () {
            widget.toggleIsPinnedFn(widget.id);
          },
          icon: Icon(
            _isPinned ? CustomIcon.pin : CustomIcon.pin_outline,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[800]),
        child: Text(widget.note),
        padding: EdgeInsets.all(12),
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(widget.title),
        ),
      ),
    );
  }
}
