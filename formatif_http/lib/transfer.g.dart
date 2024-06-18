// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nombre _$NombreFromJson(Map<String, dynamic> json) => Nombre()
  ..nombre = (json['nombre'] as num).toInt()
  ..description = json['description'] as String
  ..representation = json['representation'] as String;

Map<String, dynamic> _$NombreToJson(Nombre instance) => <String, dynamic>{
      'nombre': instance.nombre,
      'description': instance.description,
      'representation': instance.representation,
    };
