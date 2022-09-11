import 'package:belajar4/models/note.dart';
import 'package:belajar4/widgets/note_item.dart';
import 'package:flutter/material.dart';

class NotesGrid extends StatefulWidget {
  final List<Note> listNote;
  final Function(String id) toggleIsPinnedFn;

  NotesGrid(this.listNote, this.toggleIsPinnedFn);
  @override
  State<NotesGrid> createState() => _NotesGridState();
}

class _NotesGridState extends State<NotesGrid> {
  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    List<Note> tempListNote =
        widget.listNote.where((note) => note.isPinned).toList();
    tempListNote
        .addAll(widget.listNote.where((note) => !note.isPinned).toList());
    return Padding(
      padding: EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: tempListNote.length,
        itemBuilder: (ctx, index) => NoteItem(
          id: tempListNote[index].id,
          title: tempListNote[index].title,
          note: tempListNote[index].note,
          isPinned: tempListNote[index].isPinned,
          toggleIsPinnedFn: widget.toggleIsPinnedFn,
        ),
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
      ),
    );
  }
}
