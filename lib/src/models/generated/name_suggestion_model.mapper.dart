// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../name_suggestion_model.dart';

class NameSuggestionModelMapper extends ClassMapperBase<NameSuggestionModel> {
  NameSuggestionModelMapper._();

  static NameSuggestionModelMapper? _instance;
  static NameSuggestionModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NameSuggestionModelMapper._());
      NameDataModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NameSuggestionModel';

  static String _$value(NameSuggestionModel v) => v.value;
  static const Field<NameSuggestionModel, String> _f$value =
      Field('value', _$value);
  static NameDataModel _$data(NameSuggestionModel v) => v.data;
  static const Field<NameSuggestionModel, NameDataModel> _f$data =
      Field('data', _$data);

  @override
  final MappableFields<NameSuggestionModel> fields = const {
    #value: _f$value,
    #data: _f$data,
  };

  static NameSuggestionModel _instantiate(DecodingData data) {
    return NameSuggestionModel(
        value: data.dec(_f$value), data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static NameSuggestionModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NameSuggestionModel>(map);
  }

  static NameSuggestionModel fromJson(String json) {
    return ensureInitialized().decodeJson<NameSuggestionModel>(json);
  }
}

mixin NameSuggestionModelMappable {
  String toJson() {
    return NameSuggestionModelMapper.ensureInitialized()
        .encodeJson<NameSuggestionModel>(this as NameSuggestionModel);
  }

  Map<String, dynamic> toMap() {
    return NameSuggestionModelMapper.ensureInitialized()
        .encodeMap<NameSuggestionModel>(this as NameSuggestionModel);
  }

  NameSuggestionModelCopyWith<NameSuggestionModel, NameSuggestionModel,
          NameSuggestionModel>
      get copyWith => _NameSuggestionModelCopyWithImpl(
          this as NameSuggestionModel, $identity, $identity);
  @override
  String toString() {
    return NameSuggestionModelMapper.ensureInitialized()
        .stringifyValue(this as NameSuggestionModel);
  }

  @override
  bool operator ==(Object other) {
    return NameSuggestionModelMapper.ensureInitialized()
        .equalsValue(this as NameSuggestionModel, other);
  }

  @override
  int get hashCode {
    return NameSuggestionModelMapper.ensureInitialized()
        .hashValue(this as NameSuggestionModel);
  }
}

extension NameSuggestionModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NameSuggestionModel, $Out> {
  NameSuggestionModelCopyWith<$R, NameSuggestionModel, $Out>
      get $asNameSuggestionModel =>
          $base.as((v, t, t2) => _NameSuggestionModelCopyWithImpl(v, t, t2));
}

abstract class NameSuggestionModelCopyWith<$R, $In extends NameSuggestionModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  NameDataModelCopyWith<$R, NameDataModel, NameDataModel> get data;
  $R call({String? value, NameDataModel? data});
  NameSuggestionModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NameSuggestionModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NameSuggestionModel, $Out>
    implements NameSuggestionModelCopyWith<$R, NameSuggestionModel, $Out> {
  _NameSuggestionModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NameSuggestionModel> $mapper =
      NameSuggestionModelMapper.ensureInitialized();
  @override
  NameDataModelCopyWith<$R, NameDataModel, NameDataModel> get data =>
      $value.data.copyWith.$chain((v) => call(data: v));
  @override
  $R call({String? value, NameDataModel? data}) => $apply(FieldCopyWithData(
      {if (value != null) #value: value, if (data != null) #data: data}));
  @override
  NameSuggestionModel $make(CopyWithData data) => NameSuggestionModel(
      value: data.get(#value, or: $value.value),
      data: data.get(#data, or: $value.data));

  @override
  NameSuggestionModelCopyWith<$R2, NameSuggestionModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _NameSuggestionModelCopyWithImpl($value, $cast, t);
}
