// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_processing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeProcessing _$RealtimeProcessingFromJson(Map<String, dynamic> json) =>
    RealtimeProcessing(
      wordsAccurateTimestamps: json['words_accurate_timestamps'] as bool?,
      customVocabulary: json['custom_vocabulary'] as bool?,
      customVocabularyConfig: json['custom_vocabulary_config'] == null
          ? null
          : CustomVocabularyConfig.fromJson(
              json['custom_vocabulary_config'] as Map<String, dynamic>),
      customSpelling: json['custom_spelling'] as bool?,
      customSpellingConfig: json['custom_spelling_config'] == null
          ? null
          : CustomSpellingConfig.fromJson(
              json['custom_spelling_config'] as Map<String, dynamic>),
      translation: json['translation'] as bool?,
      translationConfig: json['translation_config'] == null
          ? null
          : TranslationConfig.fromJson(
              json['translation_config'] as Map<String, dynamic>),
      namedEntityRecognition: json['named_entity_recognition'] as bool?,
      sentimentAnalysis: json['sentiment_analysis'] as bool?,
    );

Map<String, dynamic> _$RealtimeProcessingToJson(RealtimeProcessing instance) =>
    <String, dynamic>{
      if (instance.wordsAccurateTimestamps case final value?)
        'words_accurate_timestamps': value,
      if (instance.customVocabulary case final value?)
        'custom_vocabulary': value,
      if (instance.customVocabularyConfig case final value?)
        'custom_vocabulary_config': value,
      if (instance.customSpelling case final value?) 'custom_spelling': value,
      if (instance.customSpellingConfig case final value?)
        'custom_spelling_config': value,
      if (instance.translation case final value?) 'translation': value,
      if (instance.translationConfig case final value?)
        'translation_config': value,
      if (instance.namedEntityRecognition case final value?)
        'named_entity_recognition': value,
      if (instance.sentimentAnalysis case final value?)
        'sentiment_analysis': value,
    };
