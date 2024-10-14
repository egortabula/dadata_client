import 'package:dadata_client/src/enums/gender_enum.dart';
import 'package:dart_mappable/dart_mappable.dart';
part 'generated/name_data_model.mapper.dart';

@MappableClass()
class NameDataModel with NameDataModelMappable {
  /// Creates an instance of [NameDataModel] from a JSON map.
  NameDataModel({
    required this.qc,
    this.name,
    this.surname,
    this.patronymic,
    this.gender,
  });

  /// The first name (e.g., "Виктор").
  final String? name;

  /// The last name (e.g., "Иванов").
  final String? surname;

  /// The patronymic (e.g., "Иванович").
  final String? patronymic;

  /// The gender (e.g., "MALE", "FEMALE", "UNKNOWN").
  final GenderEnum? gender;

  /// Quality control code indicating the completeness of the name.
  ///
  /// - 0: All parts of the name are known.
  /// - 1: Some parts of the name are unknown.
  final String qc;
}
