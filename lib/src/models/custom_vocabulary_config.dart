import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_vocabulary_config.g.dart';

@immutable
@JsonSerializable(includeIfNull: false)
class CustomVocabularyConfig {
  @JsonKey(name: 'vocabulary', fromJson: _vocabularyFromJson, toJson: _vocabularyToJson)
  final CustomVocabularyConfigVocabulary? vocabulary;

  @JsonKey(name: 'default_intensity')
  final double? defaultIntensity;

  const CustomVocabularyConfig({
    required this.vocabulary,
    this.defaultIntensity,
  });

  /// Creates [CustomVocabularyConfig] from JSON data
  factory CustomVocabularyConfig.fromJson(Map<String, dynamic> json) => _$CustomVocabularyConfigFromJson(json);

  /// Преобразует в JSON
  Map<String, dynamic> toJson() => _$CustomVocabularyConfigToJson(this);

  static CustomVocabularyConfigVocabulary? _vocabularyFromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return CustomVocabularyConfigVocabulary.fromJson(json);
  }

  static Map<String, dynamic>? _vocabularyToJson(CustomVocabularyConfigVocabulary? config) {
    if (config == null) return null;
    return config.toJson();
  }
}

@immutable
@JsonSerializable()
class CustomVocabularyConfigVocabulary {
  /// The text used to replace in the transcription.
  /// Example: "Gladia"
  @JsonKey(name: 'value')
  final String value;

  /// The global intensity of the feature.
  /// Required range: 0 <= x <= 1
  /// Example: 0.5
  @JsonKey(name: 'intensity')
  final double? intensity;

  /// The pronunciations used in the transcription.
  /// Example: ["Gladys", "Gladys"]
  @JsonKey(name: 'pronunciations')
  final List<String>? pronunciations;

  /// Specify the language in which it will be pronounced when sound comparison occurs. Default to transcription language.
  /// Example: "en"
  @JsonKey(name: 'language')
  final String? language;

  const CustomVocabularyConfigVocabulary({
    required this.value,
    this.pronunciations,
    this.intensity,
    this.language,
  });

  /// Creates [CustomVocabularyConfigVocabulary] from JSON data
  factory CustomVocabularyConfigVocabulary.fromJson(Map<String, dynamic> json) => _$CustomVocabularyConfigVocabularyFromJson(json);

  /// Converts to JSON
  Map<String, dynamic> toJson() => _$CustomVocabularyConfigVocabularyToJson(this);
}
