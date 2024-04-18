// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stage_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StageDetail _$StageDetailFromJson(Map<String, dynamic> json) {
  return _StageDetail.fromJson(json);
}

/// @nodoc
mixin _$StageDetail {
  String get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageDetailCopyWith<StageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageDetailCopyWith<$Res> {
  factory $StageDetailCopyWith(
          StageDetail value, $Res Function(StageDetail) then) =
      _$StageDetailCopyWithImpl<$Res, StageDetail>;
  @useResult
  $Res call({String id, String address});
}

/// @nodoc
class _$StageDetailCopyWithImpl<$Res, $Val extends StageDetail>
    implements $StageDetailCopyWith<$Res> {
  _$StageDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StageDetailImplCopyWith<$Res>
    implements $StageDetailCopyWith<$Res> {
  factory _$$StageDetailImplCopyWith(
          _$StageDetailImpl value, $Res Function(_$StageDetailImpl) then) =
      __$$StageDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String address});
}

/// @nodoc
class __$$StageDetailImplCopyWithImpl<$Res>
    extends _$StageDetailCopyWithImpl<$Res, _$StageDetailImpl>
    implements _$$StageDetailImplCopyWith<$Res> {
  __$$StageDetailImplCopyWithImpl(
      _$StageDetailImpl _value, $Res Function(_$StageDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_$StageDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StageDetailImpl implements _StageDetail {
  const _$StageDetailImpl({required this.id, required this.address});

  factory _$StageDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$StageDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String address;

  @override
  String toString() {
    return 'StageDetail(id: $id, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StageDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StageDetailImplCopyWith<_$StageDetailImpl> get copyWith =>
      __$$StageDetailImplCopyWithImpl<_$StageDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StageDetailImplToJson(
      this,
    );
  }
}

abstract class _StageDetail implements StageDetail {
  const factory _StageDetail(
      {required final String id,
      required final String address}) = _$StageDetailImpl;

  factory _StageDetail.fromJson(Map<String, dynamic> json) =
      _$StageDetailImpl.fromJson;

  @override
  String get id;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$StageDetailImplCopyWith<_$StageDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
