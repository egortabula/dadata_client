// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../gender_enum.dart';

class GenderEnumMapper extends EnumMapper<GenderEnum> {
  GenderEnumMapper._();

  static GenderEnumMapper? _instance;
  static GenderEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenderEnumMapper._());
    }
    return _instance!;
  }

  static GenderEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GenderEnum decode(dynamic value) {
    switch (value) {
      case 'MALE':
        return GenderEnum.male;
      case 'FEMALE':
        return GenderEnum.female;
      case 'UNKNOWN':
        return GenderEnum.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GenderEnum self) {
    switch (self) {
      case GenderEnum.male:
        return 'MALE';
      case GenderEnum.female:
        return 'FEMALE';
      case GenderEnum.unknown:
        return 'UNKNOWN';
    }
  }
}

extension GenderEnumMapperExtension on GenderEnum {
  dynamic toValue() {
    GenderEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GenderEnum>(this);
  }
}
