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
  @JsonKey(name: 'mt20id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mt10id')
  String get stageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfnm')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfpdfrom')
  String get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfpdto')
  String get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcltynm')
  String get stage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfcast')
  String get performer => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfruntime')
  String get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfage')
  String get ageLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'pcseguidance')
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genrenm')
  String get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'prfstate')
  String get state => throw _privateConstructorUsedError;
  String get openrun => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'mt20id') String id,
      @JsonKey(name: 'mt10id') String stageId,
      @JsonKey(name: 'prfnm') String name,
      @JsonKey(name: 'prfpdfrom') String startAt,
      @JsonKey(name: 'prfpdto') String endAt,
      @JsonKey(name: 'fcltynm') String stage,
      @JsonKey(name: 'prfcast') String performer,
      @JsonKey(name: 'prfruntime') String runtime,
      @JsonKey(name: 'prfage') String ageLimit,
      @JsonKey(name: 'pcseguidance') String price,
      @JsonKey(name: 'poster') String posterPath,
      @JsonKey(name: 'genrenm') String genre,
      @JsonKey(name: 'prfstate') String state,
      String openrun});
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
      {@JsonKey(name: 'mt20id') String id,
      @JsonKey(name: 'mt10id') String stageId,
      @JsonKey(name: 'prfnm') String name,
      @JsonKey(name: 'prfpdfrom') String startAt,
      @JsonKey(name: 'prfpdto') String endAt,
      @JsonKey(name: 'fcltynm') String stage,
      @JsonKey(name: 'prfcast') String performer,
      @JsonKey(name: 'prfruntime') String runtime,
      @JsonKey(name: 'prfage') String ageLimit,
      @JsonKey(name: 'pcseguidance') String price,
      @JsonKey(name: 'poster') String posterPath,
      @JsonKey(name: 'genrenm') String genre,
      @JsonKey(name: 'prfstate') String state,
      String openrun});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConcertDetailImpl implements _ConcertDetail {
  const _$ConcertDetailImpl(
      {@JsonKey(name: 'mt20id') required this.id,
      @JsonKey(name: 'mt10id') required this.stageId,
      @JsonKey(name: 'prfnm') required this.name,
      @JsonKey(name: 'prfpdfrom') required this.startAt,
      @JsonKey(name: 'prfpdto') required this.endAt,
      @JsonKey(name: 'fcltynm') required this.stage,
      @JsonKey(name: 'prfcast') this.performer = '',
      @JsonKey(name: 'prfruntime') required this.runtime,
      @JsonKey(name: 'prfage') required this.ageLimit,
      @JsonKey(name: 'pcseguidance') required this.price,
      @JsonKey(name: 'poster') required this.posterPath,
      @JsonKey(name: 'genrenm') required this.genre,
      @JsonKey(name: 'prfstate') required this.state,
      required this.openrun});

  factory _$ConcertDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConcertDetailImplFromJson(json);

  @override
  @JsonKey(name: 'mt20id')
  final String id;
  @override
  @JsonKey(name: 'mt10id')
  final String stageId;
  @override
  @JsonKey(name: 'prfnm')
  final String name;
  @override
  @JsonKey(name: 'prfpdfrom')
  final String startAt;
  @override
  @JsonKey(name: 'prfpdto')
  final String endAt;
  @override
  @JsonKey(name: 'fcltynm')
  final String stage;
  @override
  @JsonKey(name: 'prfcast')
  final String performer;
  @override
  @JsonKey(name: 'prfruntime')
  final String runtime;
  @override
  @JsonKey(name: 'prfage')
  final String ageLimit;
  @override
  @JsonKey(name: 'pcseguidance')
  final String price;
  @override
  @JsonKey(name: 'poster')
  final String posterPath;
  @override
  @JsonKey(name: 'genrenm')
  final String genre;
  @override
  @JsonKey(name: 'prfstate')
  final String state;
  @override
  final String openrun;

  @override
  String toString() {
    return 'ConcertDetail(id: $id, stageId: $stageId, name: $name, startAt: $startAt, endAt: $endAt, stage: $stage, performer: $performer, runtime: $runtime, ageLimit: $ageLimit, price: $price, posterPath: $posterPath, genre: $genre, state: $state, openrun: $openrun)';
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
            (identical(other.openrun, openrun) || other.openrun == openrun));
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
      openrun);

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
      {@JsonKey(name: 'mt20id') required final String id,
      @JsonKey(name: 'mt10id') required final String stageId,
      @JsonKey(name: 'prfnm') required final String name,
      @JsonKey(name: 'prfpdfrom') required final String startAt,
      @JsonKey(name: 'prfpdto') required final String endAt,
      @JsonKey(name: 'fcltynm') required final String stage,
      @JsonKey(name: 'prfcast') final String performer,
      @JsonKey(name: 'prfruntime') required final String runtime,
      @JsonKey(name: 'prfage') required final String ageLimit,
      @JsonKey(name: 'pcseguidance') required final String price,
      @JsonKey(name: 'poster') required final String posterPath,
      @JsonKey(name: 'genrenm') required final String genre,
      @JsonKey(name: 'prfstate') required final String state,
      required final String openrun}) = _$ConcertDetailImpl;

  factory _ConcertDetail.fromJson(Map<String, dynamic> json) =
      _$ConcertDetailImpl.fromJson;

  @override
  @JsonKey(name: 'mt20id')
  String get id;
  @override
  @JsonKey(name: 'mt10id')
  String get stageId;
  @override
  @JsonKey(name: 'prfnm')
  String get name;
  @override
  @JsonKey(name: 'prfpdfrom')
  String get startAt;
  @override
  @JsonKey(name: 'prfpdto')
  String get endAt;
  @override
  @JsonKey(name: 'fcltynm')
  String get stage;
  @override
  @JsonKey(name: 'prfcast')
  String get performer;
  @override
  @JsonKey(name: 'prfruntime')
  String get runtime;
  @override
  @JsonKey(name: 'prfage')
  String get ageLimit;
  @override
  @JsonKey(name: 'pcseguidance')
  String get price;
  @override
  @JsonKey(name: 'poster')
  String get posterPath;
  @override
  @JsonKey(name: 'genrenm')
  String get genre;
  @override
  @JsonKey(name: 'prfstate')
  String get state;
  @override
  String get openrun;
  @override
  @JsonKey(ignore: true)
  _$$ConcertDetailImplCopyWith<_$ConcertDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
