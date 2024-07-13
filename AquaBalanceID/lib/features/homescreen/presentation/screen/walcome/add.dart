import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/crud/data/models/note.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddNotePage extends StatefulWidget {
  @override
  _AddNotePageState createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _contentController = TextEditingController();

    // Periksa apakah sudah ada data di notesBox
    final noteBox = Hive.box<Note>('notesBox');
    if (noteBox.isNotEmpty) {
      // Jika sudah ada data, navigasi langsung ke halaman utama
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, '/home');
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  void _addNote() {
    final newNote = Note(
      title: _titleController.text,
      content: _contentController.text,
    );
    final noteBox = Hive.box<Note>('notesBox');
    noteBox.add(newNote);
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Buat Profile Anda',
                style: myTextStyle30,
              ),
              30.height,
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Nama Panggilan',
                    fillColor: AppColor.white,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
              15.height,
              TextFormField(
                controller: _contentController,
                maxLines: null,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.white,
                    hintText: 'Nama Pengguna',
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
              20.height,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.blue400,
                    foregroundColor: AppColor.white,
                    minimumSize: Size(double.infinity, 50)),
                onPressed: () {
                  _addNote();
                },
                child: Text(
                  'Simpan',
                  style: myTextStyle18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
