import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/crud/data/models/note.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EditProfile extends StatefulWidget {
  final Note? note;
  const EditProfile({super.key, this.note});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    late Note note;
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();

    void _loadNote() {
      final Box<Note> noteBox = Hive.box<Note>('notesBox');
      note = noteBox.getAt(0)!; // Edit catatan dengan indeks 0
      titleController.text = note.title;
      contentController.text = note.content;
    }

    void initState() {
      super.initState();
      _loadNote();
      titleController.text = note.title;
      contentController.text = note.content;
    }

    void _saveChanges() {
      final Box<Note> noteBox = Hive.box<Note>('notesBox');
      final updatedNote = Note(
        title: titleController.text,
        content: contentController.text,
      );
      noteBox.putAt(
          0, updatedNote); // Simpan perubahan pada catatan dengan indeks 0
      Navigator.pop(context); // Kembali ke halaman sebelumnya
    }

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Batal',
                      style: myTextStyle18,
                    )),
                Text(
                  'Profil',
                  style: myTextStyleBold18,
                ),
                TextButton(
                    onPressed: () {
                      _saveChanges();
                    },
                    child: Text(
                      'Simpan',
                      style: myTextStyle18.copyWith(color: AppColor.blue),
                    )),
              ],
            ),
            20.height,
            Center(
              child: Stack(
                children: [
                  ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    ),
                  ),
                  Positioned(
                      top: 65,
                      left: 66,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.indigo,
                            borderRadius: BorderRadius.circular(100)),
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.camera_alt,
                          color: AppColor.white,
                          size: 15,
                        ),
                      )),
                ],
              ),
            ),
            20.height,
            Text('Nama Panggilan'),
            10.height,
            ValueListenableBuilder(
              valueListenable: Hive.box<Note>('notesBox').listenable(),
              builder: (context, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.white,
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                    10.height,
                    const Text('Nama Pengguna'),
                    10.height,
                    TextFormField(
                      controller: contentController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
