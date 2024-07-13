import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/crud/data/models/note.dart';
import 'package:aqua_balance/features/crud/presentation/widgets/bottom_profile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  final Box<Note> noteBox = Hive.box<Note>('notesBox');
  late Note note;

  @override
  void initState() {
    super.initState();
    _loadNote();
  }

  void _loadNote() {
    final Box<Note> noteBox = Hive.box<Note>('notesBox');
    note = noteBox.getAt(0)!; // Edit catatan dengan indeks 0
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.blue.shade300,
                        size: 30,
                      ))
                ],
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person),
                    ValueListenableBuilder(
                      valueListenable: Hive.box<Note>('notesBox').listenable(),
                      builder: (context, value, child) {
                        _loadNote();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${note.title}'.toUpperCaseString(),
                                style: myTextStyleBold18),
                            Text(
                              '${note.content}',
                              style: myTextStyle16,
                            ),
                          ],
                        );
                      },
                    ),
                    5.height,
                    MyBottomProfile(
                      onTap: () {
                        Navigator.pushNamed(context, '/editprofile');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
