import 'package:dart_mappable/dart_mappable.dart';
part 'generated/gender_enum.mapper.dart';

/// Represents the gender options provided by the Dadata API.
///
/// This enum is used to capture the gender classification from Dadata's
/// name suggestions.
/// The possible values are:
/// - [GenderEnum.male]: Represents the male gender ("MALE").
/// - [GenderEnum.female]: Represents the female gender ("FEMALE").
/// - [GenderEnum.unknown]: Represents an unknown or
/// undetermined gender ("UNKNOWN").
@MappableEnum(defaultValue: 'UNKNOWN')
enum GenderEnum {
  /// Male gender.
  @MappableValue('MALE')
  male,

  /// Female gender.
  @MappableValue('FEMALE')
  female,

  /// Unknown or undetermined gender.
  @MappableValue('UNKNOWN')
  unknown,
}
