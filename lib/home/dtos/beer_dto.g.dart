// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeerDto _$$_BeerDtoFromJson(Map<String, dynamic> json) => _$_BeerDto(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$_BeerDtoToJson(_$_BeerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
