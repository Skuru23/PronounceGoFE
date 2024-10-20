//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role_code.g.dart';

class RoleCode extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const RoleCode USER = _$USER;
  @BuiltValueEnumConst(wireName: r'ADMIN', fallback: true)
  static const RoleCode ADMIN = _$ADMIN;

  static Serializer<RoleCode> get serializer => _$roleCodeSerializer;

  const RoleCode._(String name) : super(name);

  static BuiltSet<RoleCode> get values => _$values;
  static RoleCode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RoleCodeMixin = Object with _$RoleCodeMixin;
