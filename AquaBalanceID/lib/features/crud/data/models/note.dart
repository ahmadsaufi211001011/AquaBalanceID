import 'package:hive/hive.dart';
export 'note.g.dart';

@HiveType(typeId: 0)
class Note {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String content;

  Note({
    required this.title,
    required this.content,
    String? imagePath,
  });

  get imagePath => null;
}
