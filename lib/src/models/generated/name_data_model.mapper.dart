// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../name_data_model.dart';

class NameDataModelMapper extends ClassMapperBase<NameDataModel> {
  NameDataModelMapper._();

  static NameDataModelMapper? _instance;
  static NameDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NameDataModelMapper._());
      GenderEnumMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NameDataModel';

  static String _$qc(NameDataModel v) => v.qc;
  static const Field<NameDataModel, String> _f$qc = Field('qc', _$qc);
  static String? _$name(NameDataModel v) => v.name;
  static const Field<NameDataModel, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$surname(NameDataModel v) => v.surname;
  static const Field<NameDataModel, String> _f$surname =
      Field('surname', _$surname, opt: true);
  static String? _$patronymic(NameDataModel v) => v.patronymic;
  static const Field<NameDataModel, String> _f$patronymic =
      Field('patronymic', _$patronymic, opt: true);
  static GenderEnum? _$gender(NameDataModel v) => v.gender;
  static const Field<NameDataModel, GenderEnum> _f$gender =
      Field('gender', _$gender, opt: true);

  @override
  final MappableFields<NameDataModel> fields = const {
    #qc: _f$qc,
    #name: _f$name,
    #surname: _f$surname,
    #patronymic: _f$patronymic,
    #gender: _f$gender,
  };

  static NameDataModel _instantiate(DecodingData data) {
    return NameDataModel(
        qc: data.dec(_f$qc),
        name: data.dec(_f$name),
        surname: data.dec(_f$surname),
        patronymic: data.dec(_f$patronymic),
        gender: data.dec(_f$gender));
  }

  @override
  final Function instantiate = _instantiate;

  static NameDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NameDataModel>(map);
  }

  static NameDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<NameDataModel>(json);
  }
}

mixin NameDataModelMappable {
  String toJson() {
    return NameDataModelMapper.ensureInitialized()
        .encodeJson<NameDataModel>(this as NameDataModel);
  }

  Map<String, dynamic> toMap() {
    return NameDataModelMapper.ensureInitialized()
        .encodeMap<NameDataModel>(this as NameDataModel);
  }

  NameDataModelCopyWith<NameDataModel, NameDataModel, NameDataModel>
      get copyWith => _NameDataModelCopyWithImpl(
          this as NameDataModel, $identity, $identity);
  @override
  String toString() {
    return NameDataModelMapper.ensureInitialized()
        .stringifyValue(this as NameDataModel);
  }

  @override
  bool operator ==(Object other) {
    return NameDataModelMapper.ensureInitialized()
        .equalsValue(this as NameDataModel, other);
  }

  @override
  int get hashCode {
    return NameDataModelMapper.ensureInitialized()
        .hashValue(this as NameDataModel);
  }
}

extension NameDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NameDataModel, $Out> {
  NameDataModelCopyWith<$R, NameDataModel, $Out> get $asNameDataModel =>
      $base.as((v, t, t2) => _NameDataModelCopyWithImpl(v, t, t2));
}

abstract class NameDataModelCopyWith<$R, $In extends NameDataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? qc,
      String? name,
      String? surname,
      String? patronymic,
      GenderEnum? gender});
  NameDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NameDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NameDataModel, $Out>
    implements NameDataModelCopyWith<$R, NameDataModel, $Out> {
  _NameDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NameDataModel> $mapper =
      NameDataModelMapper.ensureInitialized();
  @override
  $R call(
          {String? qc,
          Object? name = $none,
          Object? surname = $none,
          Object? patronymic = $none,
          Object? gender = $none}) =>
      $apply(FieldCopyWithData({
        if (qc != null) #qc: qc,
        if (name != $none) #name: name,
        if (surname != $none) #surname: surname,
        if (patronymic != $none) #patronymic: patronymic,
        if (gender != $none) #gender: gender
      }));
  @override
  NameDataModel $make(CopyWithData data) => NameDataModel(
      qc: data.get(#qc, or: $value.qc),
      name: data.get(#name, or: $value.name),
      surname: data.get(#surname, or: $value.surname),
      patronymic: data.get(#patronymic, or: $value.patronymic),
      gender: data.get(#gender, or: $value.gender));

  @override
  NameDataModelCopyWith<$R2, NameDataModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NameDataModelCopyWithImpl($value, $cast, t);
}
