// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Concert _$ConcertFromJson(Map<String, dynamic> json) {
  return _Concert.fromJson(json);
}

/// @nodoc
mixin _$Concert {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get startAt => throw _privateConstructorUsedError;
  String get endAt => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get stage => throw _privateConstructorUsedError;
  String get openrun => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConcertCopyWith<Concert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConcertCopyWith<$Res> {
  factory $ConcertCopyWith(Concert value, $Res Function(Concert) then) =
      _$ConcertCopyWithImpl<$Res, Concert>;
  @useResult
  $Res call(
      {String id,
      String name,
      String genre,
      String state,
      String startAt,
      String endAt,
      String posterPath,
      String stage,
      String openrun});
}

/// @nodoc
class _$ConcertCopyWithImpl<$Res, $Val extends Concert>
    implements $ConcertCopyWith<$Res> {
  _$ConcertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genre = null,
    Object? state = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? posterPath = null,
    Object? stage = null,
    Object? openrun = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      openrun: null == openrun
          ? _value.openrun
          : openrun // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConcertImplCopyWith<$Res> implements $ConcertCopyWith<$Res> {
  factory _$$ConcertImplCopyWith(
          _$ConcertImpl value, $Res Function(_$ConcertImpl) then) =
      __$$ConcertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String genre,
      String state,
      String startAt,
      String endAt,
      String posterPath,
      String stage,
      String openrun});
}

/// @nodoc
class __$$ConcertImplCopyWithImpl<$Res>
    extends _$ConcertCopyWithImpl<$Res, _$ConcertImpl>
    implements _$$ConcertImplCopyWith<$Res> {
  __$$ConcertImplCopyWithImpl(
      _$ConcertImpl _value, $Res Function(_$ConcertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genre = null,
    Object? state = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? posterPath = null,
    Object? stage = null,
    Object? openrun = null,
  }) {
    return _then(_$ConcertImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      openrun: null == openrun
          ? _value.openrun
          : openrun // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConcertImpl implements _Concert {
  const _$ConcertImpl(
      {required this.id,
      required this.name,
      required this.genre,
      required this.state,
      required this.startAt,
      required this.endAt,
      required this.posterPath,
      required this.stage,
      required this.openrun});

  factory _$ConcertImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConcertImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String genre;
  @override
  final String state;
  @override
  final String startAt;
  @override
  final String endAt;
  @override
  final String posterPath;
  @override
  final String stage;
  @override
  final String openrun;

  @override
  String toString() {
    return 'Concert(id: $id, name: $name, genre: $genre, state: $state, startAt: $startAt, endAt: $endAt, posterPath: $posterPath, stage: $stage, openrun: $openrun)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConcertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.openrun, openrun) || other.openrun == openrun));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, genre, state, startAt,
      endAt, posterPath, stage, openrun);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConcertImplCopyWith<_$ConcertImpl> get copyWith =>
      __$$ConcertImplCopyWithImpl<_$ConcertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConcertImplToJson(
      this,
    );
  }
}

abstract class _Concert implements Concert {
  const factory _Concert(
      {required final String id,
      required final String name,
      required final String genre,
      required final String state,
      required final String startAt,
      required final String endAt,
      required final String posterPath,
      required final String stage,
      required final String openrun}) = _$ConcertImpl;

  factory _Concert.fromJson(Map<String, dynamic> json) = _$ConcertImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get genre;
  @override
  String get state;
  @override
  String get startAt;
  @override
  String get endAt;
  @override
  String get posterPath;
  @override
  String get stage;
  @override
  String get openrun;
  @override
  @JsonKey(ignore: true)
  _$$ConcertImplCopyWith<_$ConcertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
