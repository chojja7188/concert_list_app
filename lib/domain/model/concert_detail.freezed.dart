// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concert_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConcertDetail _$ConcertDetailFromJson(Map<String, dynamic> json) {
  return _ConcertDetail.fromJson(json);
}

/// @nodoc
mixin _$ConcertDetail {
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get stageId => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  String get startAt => throw _privateConstructorUsedError;
  @HiveField(5)
  String get endAt => throw _privateConstructorUsedError;
  @HiveField(6)
  String get stage => throw _privateConstructorUsedError;
  @HiveField(7)
  String get performer => throw _privateConstructorUsedError;
  @HiveField(8)
  String get runtime => throw _privateConstructorUsedError;
  @HiveField(9)
  String get ageLimit => throw _privateConstructorUsedError;
  @HiveField(10)
  String get price => throw _privateConstructorUsedError;
  @HiveField(11)
  String get posterPath => throw _privateConstructorUsedError;
  @HiveField(12)
  String get genre => throw _privateConstructorUsedError;
  @HiveField(13)
  String get state => throw _privateConstructorUsedError;
  @HiveField(14)
  String get openrun => throw _privateConstructorUsedError;
  @HiveField(15)
  dynamic get infoImages => throw _privateConstructorUsedError;
  @HiveField(16)
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConcertDetailCopyWith<ConcertDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConcertDetailCopyWith<$Res> {
  factory $ConcertDetailCopyWith(
          ConcertDetail value, $Res Function(ConcertDetail) then) =
      _$ConcertDetailCopyWithImpl<$Res, ConcertDetail>;
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String stageId,
      @HiveField(3) String name,
      @HiveField(4) String startAt,
      @HiveField(5) String endAt,
      @HiveField(6) String stage,
      @HiveField(7) String performer,
      @HiveField(8) String runtime,
      @HiveField(9) String ageLimit,
      @HiveField(10) String price,
      @HiveField(11) String posterPath,
      @HiveField(12) String genre,
      @HiveField(13) String state,
      @HiveField(14) String openrun,
      @HiveField(15) dynamic infoImages,
      @HiveField(16) String time});
}

/// @nodoc
class _$ConcertDetailCopyWithImpl<$Res, $Val extends ConcertDetail>
    implements $ConcertDetailCopyWith<$Res> {
  _$ConcertDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stageId = null,
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? stage = null,
    Object? performer = null,
    Object? runtime = null,
    Object? ageLimit = null,
    Object? price = null,
    Object? posterPath = null,
    Object? genre = null,
    Object? state = null,
    Object? openrun = null,
    Object? infoImages = freezed,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      performer: null == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String,
      ageLimit: null == ageLimit
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      openrun: null == openrun
          ? _value.openrun
          : openrun // ignore: cast_nullable_to_non_nullable
              as String,
      infoImages: freezed == infoImages
          ? _value.infoImages
          : infoImages // ignore: cast_nullable_to_non_nullable
              as dynamic,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConcertDetailImplCopyWith<$Res>
    implements $ConcertDetailCopyWith<$Res> {
  factory _$$ConcertDetailImplCopyWith(
          _$ConcertDetailImpl value, $Res Function(_$ConcertDetailImpl) then) =
      __$$ConcertDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String stageId,
      @HiveField(3) String name,
      @HiveField(4) String startAt,
      @HiveField(5) String endAt,
      @HiveField(6) String stage,
      @HiveField(7) String performer,
      @HiveField(8) String runtime,
      @HiveField(9) String ageLimit,
      @HiveField(10) String price,
      @HiveField(11) String posterPath,
      @HiveField(12) String genre,
      @HiveField(13) String state,
      @HiveField(14) String openrun,
      @HiveField(15) dynamic infoImages,
      @HiveField(16) String time});
}

/// @nodoc
class __$$ConcertDetailImplCopyWithImpl<$Res>
    extends _$ConcertDetailCopyWithImpl<$Res, _$ConcertDetailImpl>
    implements _$$ConcertDetailImplCopyWith<$Res> {
  __$$ConcertDetailImplCopyWithImpl(
      _$ConcertDetailImpl _value, $Res Function(_$ConcertDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stageId = null,
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? stage = null,
    Object? performer = null,
    Object? runtime = null,
    Object? ageLimit = null,
    Object? price = null,
    Object? posterPath = null,
    Object? genre = null,
    Object? state = null,
    Object? openrun = null,
    Object? infoImages = freezed,
    Object? time = null,
  }) {
    return _then(_$ConcertDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stageId: null == stageId
          ? _value.stageId
          : stageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      performer: null == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String,
      ageLimit: null == ageLimit
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      openrun: null == openrun
          ? _value.openrun
          : openrun // ignore: cast_nullable_to_non_nullable
              as String,
      infoImages: freezed == infoImages
          ? _value.infoImages
          : infoImages // ignore: cast_nullable_to_non_nullable
              as dynamic,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$ConcertDetailImpl implements _ConcertDetail {
  const _$ConcertDetailImpl(
      {@HiveField(1) required this.id,
      @HiveField(2) required this.stageId,
      @HiveField(3) required this.name,
      @HiveField(4) required this.startAt,
      @HiveField(5) required this.endAt,
      @HiveField(6) required this.stage,
      @HiveField(7) required this.performer,
      @HiveField(8) required this.runtime,
      @HiveField(9) required this.ageLimit,
      @HiveField(10) required this.price,
      @HiveField(11) required this.posterPath,
      @HiveField(12) required this.genre,
      @HiveField(13) required this.state,
      @HiveField(14) required this.openrun,
      @HiveField(15) required this.infoImages,
      @HiveField(16) required this.time});

  factory _$ConcertDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConcertDetailImplFromJson(json);

  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String stageId;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(4)
  final String startAt;
  @override
  @HiveField(5)
  final String endAt;
  @override
  @HiveField(6)
  final String stage;
  @override
  @HiveField(7)
  final String performer;
  @override
  @HiveField(8)
  final String runtime;
  @override
  @HiveField(9)
  final String ageLimit;
  @override
  @HiveField(10)
  final String price;
  @override
  @HiveField(11)
  final String posterPath;
  @override
  @HiveField(12)
  final String genre;
  @override
  @HiveField(13)
  final String state;
  @override
  @HiveField(14)
  final String openrun;
  @override
  @HiveField(15)
  final dynamic infoImages;
  @override
  @HiveField(16)
  final String time;

  @override
  String toString() {
    return 'ConcertDetail(id: $id, stageId: $stageId, name: $name, startAt: $startAt, endAt: $endAt, stage: $stage, performer: $performer, runtime: $runtime, ageLimit: $ageLimit, price: $price, posterPath: $posterPath, genre: $genre, state: $state, openrun: $openrun, infoImages: $infoImages, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConcertDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stageId, stageId) || other.stageId == stageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.performer, performer) ||
                other.performer == performer) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.ageLimit, ageLimit) ||
                other.ageLimit == ageLimit) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.openrun, openrun) || other.openrun == openrun) &&
            const DeepCollectionEquality()
                .equals(other.infoImages, infoImages) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stageId,
      name,
      startAt,
      endAt,
      stage,
      performer,
      runtime,
      ageLimit,
      price,
      posterPath,
      genre,
      state,
      openrun,
      const DeepCollectionEquality().hash(infoImages),
      time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConcertDetailImplCopyWith<_$ConcertDetailImpl> get copyWith =>
      __$$ConcertDetailImplCopyWithImpl<_$ConcertDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConcertDetailImplToJson(
      this,
    );
  }
}

abstract class _ConcertDetail implements ConcertDetail {
  const factory _ConcertDetail(
      {@HiveField(1) required final String id,
      @HiveField(2) required final String stageId,
      @HiveField(3) required final String name,
      @HiveField(4) required final String startAt,
      @HiveField(5) required final String endAt,
      @HiveField(6) required final String stage,
      @HiveField(7) required final String performer,
      @HiveField(8) required final String runtime,
      @HiveField(9) required final String ageLimit,
      @HiveField(10) required final String price,
      @HiveField(11) required final String posterPath,
      @HiveField(12) required final String genre,
      @HiveField(13) required final String state,
      @HiveField(14) required final String openrun,
      @HiveField(15) required final dynamic infoImages,
      @HiveField(16) required final String time}) = _$ConcertDetailImpl;

  factory _ConcertDetail.fromJson(Map<String, dynamic> json) =
      _$ConcertDetailImpl.fromJson;

  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String get stageId;
  @override
  @HiveField(3)
  String get name;
  @override
  @HiveField(4)
  String get startAt;
  @override
  @HiveField(5)
  String get endAt;
  @override
  @HiveField(6)
  String get stage;
  @override
  @HiveField(7)
  String get performer;
  @override
  @HiveField(8)
  String get runtime;
  @override
  @HiveField(9)
  String get ageLimit;
  @override
  @HiveField(10)
  String get price;
  @override
  @HiveField(11)
  String get posterPath;
  @override
  @HiveField(12)
  String get genre;
  @override
  @HiveField(13)
  String get state;
  @override
  @HiveField(14)
  String get openrun;
  @override
  @HiveField(15)
  dynamic get infoImages;
  @override
  @HiveField(16)
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$ConcertDetailImplCopyWith<_$ConcertDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
