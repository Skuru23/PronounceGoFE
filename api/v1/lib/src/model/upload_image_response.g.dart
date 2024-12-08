// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadImageResponse extends UploadImageResponse {
  @override
  final String path;

  factory _$UploadImageResponse(
          [void Function(UploadImageResponseBuilder)? updates]) =>
      (new UploadImageResponseBuilder()..update(updates))._build();

  _$UploadImageResponse._({required this.path}) : super._() {
    BuiltValueNullFieldError.checkNotNull(path, r'UploadImageResponse', 'path');
  }

  @override
  UploadImageResponse rebuild(
          void Function(UploadImageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadImageResponseBuilder toBuilder() =>
      new UploadImageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadImageResponse && path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadImageResponse')
          ..add('path', path))
        .toString();
  }
}

class UploadImageResponseBuilder
    implements Builder<UploadImageResponse, UploadImageResponseBuilder> {
  _$UploadImageResponse? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  UploadImageResponseBuilder() {
    UploadImageResponse._defaults(this);
  }

  UploadImageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadImageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadImageResponse;
  }

  @override
  void update(void Function(UploadImageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadImageResponse build() => _build();

  _$UploadImageResponse _build() {
    final _$result = _$v ??
        new _$UploadImageResponse._(
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'UploadImageResponse', 'path'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
