import 'package:hive/hive.dart';

part  'note_modle.g.dart';

@HiveType(typeId: 0)
class noteModle extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String body;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  noteModle({
    required this.body,
    required this.color,
    required this.date,
    required this.title,
  });
}
