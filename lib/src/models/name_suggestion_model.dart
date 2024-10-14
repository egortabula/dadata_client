import 'package:dadata_client/src/models/name_data_model.dart';
import 'package:dart_mappable/dart_mappable.dart';
part 'generated/name_suggestion_model.mapper.dart';

@MappableClass()
class NameSuggestionModel with NameSuggestionModelMappable{
  /// Creates an instance of [NameSuggestionModel] from a JSON map.
  NameSuggestionModel({
    required this.value,
    required this.data,
  });

  /// The full name suggestion (e.g., "Виктор").
  final String value;

  /// The data associated with the name, such as gender and parts of the name.
  final NameDataModel data;
}
