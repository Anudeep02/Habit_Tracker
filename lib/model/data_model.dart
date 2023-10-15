import 'package:hive/hive.dart';

part 'data_model.g.dart';

@HiveType(typeId: 0)
class datamodel {
  @HiveField(0)
  final String habitName;

  @HiveField(1)
  var habitCompleted;

  datamodel({required this.habitName,required this.habitCompleted});
}