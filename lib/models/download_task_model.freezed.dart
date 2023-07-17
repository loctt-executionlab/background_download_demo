// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadTaskModel {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DownloadTaskStatus get status => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadTaskModelCopyWith<DownloadTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTaskModelCopyWith<$Res> {
  factory $DownloadTaskModelCopyWith(
          DownloadTaskModel value, $Res Function(DownloadTaskModel) then) =
      _$DownloadTaskModelCopyWithImpl<$Res, DownloadTaskModel>;
  @useResult
  $Res call({String id, String url, DownloadTaskStatus status, int progress});
}

/// @nodoc
class _$DownloadTaskModelCopyWithImpl<$Res, $Val extends DownloadTaskModel>
    implements $DownloadTaskModelCopyWith<$Res> {
  _$DownloadTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadTaskModelCopyWith<$Res>
    implements $DownloadTaskModelCopyWith<$Res> {
  factory _$$_DownloadTaskModelCopyWith(_$_DownloadTaskModel value,
          $Res Function(_$_DownloadTaskModel) then) =
      __$$_DownloadTaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url, DownloadTaskStatus status, int progress});
}

/// @nodoc
class __$$_DownloadTaskModelCopyWithImpl<$Res>
    extends _$DownloadTaskModelCopyWithImpl<$Res, _$_DownloadTaskModel>
    implements _$$_DownloadTaskModelCopyWith<$Res> {
  __$$_DownloadTaskModelCopyWithImpl(
      _$_DownloadTaskModel _value, $Res Function(_$_DownloadTaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_$_DownloadTaskModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DownloadTaskModel implements _DownloadTaskModel {
  const _$_DownloadTaskModel(
      {required this.id,
      required this.url,
      required this.status,
      required this.progress});

  @override
  final String id;
  @override
  final String url;
  @override
  final DownloadTaskStatus status;
  @override
  final int progress;

  @override
  String toString() {
    return 'DownloadTaskModel(id: $id, url: $url, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadTaskModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, url, status, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadTaskModelCopyWith<_$_DownloadTaskModel> get copyWith =>
      __$$_DownloadTaskModelCopyWithImpl<_$_DownloadTaskModel>(
          this, _$identity);
}

abstract class _DownloadTaskModel implements DownloadTaskModel {
  const factory _DownloadTaskModel(
      {required final String id,
      required final String url,
      required final DownloadTaskStatus status,
      required final int progress}) = _$_DownloadTaskModel;

  @override
  String get id;
  @override
  String get url;
  @override
  DownloadTaskStatus get status;
  @override
  int get progress;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadTaskModelCopyWith<_$_DownloadTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
