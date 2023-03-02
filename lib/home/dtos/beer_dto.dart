import 'package:beer_app/home/data_sources/local/db/entity/beer_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_dto.freezed.dart';
part 'beer_dto.g.dart';

@freezed
class BeerDto with _$BeerDto {
  const factory BeerDto({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _BeerDto;

  factory BeerDto.fromJson(Map<String, dynamic> json) =>
      _$BeerDtoFromJson(json);
}

extension BeerDtoExtension on BeerDto {
  BeerEntity toEntity() {
    return BeerEntity(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
    );
  }
}
