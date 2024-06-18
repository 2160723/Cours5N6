import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transfer.g.dart';

@JsonSerializable()
class Nombre {
  Nombre();

  int nombre = 0;
  String description = '';
  String representation = '';

  factory Nombre.fromJson(Map<String, dynamic> json) => _$NombreFromJson(json);

  Map<String, dynamic> toJson() => _$NombreToJson(this);
}