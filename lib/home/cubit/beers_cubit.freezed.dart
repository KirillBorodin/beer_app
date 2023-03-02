// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BeersState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Beer> get beers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeersStateCopyWith<BeersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeersStateCopyWith<$Res> {
  factory $BeersStateCopyWith(
          BeersState value, $Res Function(BeersState) then) =
      _$BeersStateCopyWithImpl<$Res, BeersState>;
  @useResult
  $Res call({bool isLoading, List<Beer> beers});
}

/// @nodoc
class _$BeersStateCopyWithImpl<$Res, $Val extends BeersState>
    implements $BeersStateCopyWith<$Res> {
  _$BeersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? beers = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      beers: null == beers
          ? _value.beers
          : beers // ignore: cast_nullable_to_non_nullable
              as List<Beer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeersStateCopyWith<$Res>
    implements $BeersStateCopyWith<$Res> {
  factory _$$_BeersStateCopyWith(
          _$_BeersState value, $Res Function(_$_BeersState) then) =
      __$$_BeersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Beer> beers});
}

/// @nodoc
class __$$_BeersStateCopyWithImpl<$Res>
    extends _$BeersStateCopyWithImpl<$Res, _$_BeersState>
    implements _$$_BeersStateCopyWith<$Res> {
  __$$_BeersStateCopyWithImpl(
      _$_BeersState _value, $Res Function(_$_BeersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? beers = null,
  }) {
    return _then(_$_BeersState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      beers: null == beers
          ? _value._beers
          : beers // ignore: cast_nullable_to_non_nullable
              as List<Beer>,
    ));
  }
}

/// @nodoc

class _$_BeersState implements _BeersState {
  const _$_BeersState(
      {this.isLoading = false, final List<Beer> beers = const []})
      : _beers = beers;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Beer> _beers;
  @override
  @JsonKey()
  List<Beer> get beers {
    if (_beers is EqualUnmodifiableListView) return _beers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beers);
  }

  @override
  String toString() {
    return 'BeersState(isLoading: $isLoading, beers: $beers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeersState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._beers, _beers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_beers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeersStateCopyWith<_$_BeersState> get copyWith =>
      __$$_BeersStateCopyWithImpl<_$_BeersState>(this, _$identity);
}

abstract class _BeersState implements BeersState {
  const factory _BeersState({final bool isLoading, final List<Beer> beers}) =
      _$_BeersState;

  @override
  bool get isLoading;
  @override
  List<Beer> get beers;
  @override
  @JsonKey(ignore: true)
  _$$_BeersStateCopyWith<_$_BeersState> get copyWith =>
      throw _privateConstructorUsedError;
}
