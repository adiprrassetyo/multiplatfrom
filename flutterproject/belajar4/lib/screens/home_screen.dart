import 'package:belajar4/models/note.dart';
import 'package:belajar4/screens/add_note_screen.dart';
import 'package:belajar4/widgets/notes_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: prefer_final_fields
  List<Note> _listNote = [
    Note(
      id: 'N1',
      title: 'Catatan Materi Flutter',
      note:
          'Flutter merupakan Software Development Kit (SDK) yang bisa membantu developer dalam membuat aplikasi mobile cross platform. Kelas ini akan mempelajari pengembangan aplikasi mobile yang dapat dijalankan baik di IOS maupun di Android',
      updatedAt: DateTime.parse('2021-05-19 20:33:33'),
      createdAt: DateTime.parse('2021-05-19 20:33:33'),
    ),
    Note(
      id: 'N2',
      title: 'Target Pembelajaran Flutter',
      note:
          'Peserta dapat mengembangkan aplikasi mobile (IOS dan Android) menggunakan flutter,\nPeserta memahami konsep pengembangan aplikasi menggunakan flutter,\nPeserta dapat menjalankan aplikasi mobile di IOS dan Android ataupun Emulator,\nPeserta memahami bahasa pemrograman Dart,\nPeserta dapat mendevelop aplikasi mobile menggunakan flutter dan dart dari dasar secara berurutan.',
      updatedAt: DateTime.parse('2021-05-20 20:53:33'),
      createdAt: DateTime.parse('2021-05-20 20:53:33'),
    ),
    Note(
      id: 'N3',
      title: 'Belajar Flutter di ITBOX',
      note: 'Jangan lupa belajar flutter dengan video interactive di ITBOX.',
      updatedAt: DateTime.parse('2021-05-20 21:22:33'),
      createdAt: DateTime.parse('2021-05-20 21:22:33'),
    ),
    Note(
      id: 'N4',
      title: 'Resep nasi goreng',
      note:
          'Nasi putih 1 piring\nBawang putih 2 siung, cincang halus\nKecap manis atau kecap asin sesuai selera\nSaus sambal sesuai selera\nSaus tiram sesuai selera\nGaram secukupnya\nKaldu bubuk rasa ayam atau sapi sesuai selera\nDaun bawang 1 batang, cincang halus\nTelur ayam 1 butir\nSosis ayam 1 buah, iris tipis\nMargarin atau minyak goreng 3 sdm.',
      updatedAt: DateTime.parse('2021-05-20 21:51:33'),
      createdAt: DateTime.parse('2021-05-20 21:51:33'),
    ),
  ];

  void toggleisPinned(String id) {
    int index = _listNote.indexWhere((note) => note.id == id);
    if (index >= 0) {
      setState(() {
        _listNote[index].isPinned = !_listNote[index].isPinned;
      });
    }
  }

  void addNote(Note note) {
    setState(() {
      _listNote.add(note);
    });
  }

  // ignore: prefer_final_fields
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: NotesGrid(_listNote, toggleisPinned),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (builder) => AddNoteScreen(addNote),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      // Column(
      //   children: [
      //     ..._listNote.map(
      //       (note) => Container(
      //         child: Text(note.note),
      //         padding: EdgeInsets.all(12),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
