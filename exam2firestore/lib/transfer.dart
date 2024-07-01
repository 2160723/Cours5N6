import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transfer.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
///
/// La commande pour
@JsonSerializable()
class RequetePlusGrand {
  RequetePlusGrand();

  int val1 = 0;
  int val2 = 0;



  factory RequetePlusGrand.fromJson(Map<String, dynamic> json) => _$RequetePlusGrandFromJson(json);

  Map<String, dynamic> toJson() => _$RequetePlusGrandToJson(this);
}


