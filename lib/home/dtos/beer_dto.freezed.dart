// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerDto _$BeerDtoFromJson(Map<String, dynamic> json) {
  return _BeerDto.fromJson(json);
}

/// @nodoc
mixin _$BeerDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerDtoCopyWith<BeerDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerDtoCopyWith<$Res> {
  factory $BeerDtoCopyWith(BeerDto value, $Res Function(BeerDto) then) =
      _$BeerDtoCopyWithImpl<$Res, BeerDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$BeerDtoCopyWithImpl<$Res, $Val extends BeerDto>
    implements $BeerDtoCopyWith<$Res> {
  _$BeerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeerDtoCopyWith<$Res> implements $BeerDtoCopyWith<$Res> {
  factory _$$_BeerDtoCopyWith(
          _$_BeerDto value, $Res Function(_$_BeerDto) then) =
      __$$_BeerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$_BeerDtoCopyWithImpl<$Res>
    extends _$BeerDtoCopyWithImpl<$Res, _$_BeerDto>
    implements _$$_BeerDtoCopyWith<$Res> {
  __$$_BeerDtoCopyWithImpl(_$_BeerDto _value, $Res Function(_$_BeerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_BeerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeerDto implements _BeerDto {
  const _$_BeerDto(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$_BeerDto.fromJson(Map<String, dynamic> json) =>
      _$$_BeerDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'BeerDto(id: $id, name: $name, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeerDtoCopyWith<_$_BeerDto> get copyWith =>
      __$$_BeerDtoCopyWithImpl<_$_BeerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeerDtoToJson(
      this,
    );
  }
}

abstract class _BeerDto implements BeerDto {
  const factory _BeerDto(
      {required final int id,
      required final String name,
      required final String description,
      @JsonKey(name: 'image_url') required final String imageUrl}) = _$_BeerDto;

  factory _BeerDto.fromJson(Map<String, dynamic> json) = _$_BeerDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_BeerDtoCopyWith<_$_BeerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
