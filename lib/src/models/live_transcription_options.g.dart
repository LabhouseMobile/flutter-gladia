// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_transcription_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveTranscriptionOptions _$LiveTranscriptionOptionsFromJson(
        Map<String, dynamic> json) =>
    LiveTranscriptionOptions(
      encoding: LiveTranscriptionOptions._encodingFromJson(json['encoding']),
      bitDepth: LiveTranscriptionOptions._bitDepthFromJson(json['bit_depth']),
      sampleRate:
          LiveTranscriptionOptions._sampleRateFromJson(json['sample_rate']),
      channels: (json['channels'] as num?)?.toInt(),
      customMetadata: json['custom_metadata'] as Map<String, dynamic>?,
      model: json['model'] as String?,
      endpointing: (json['endpointing'] as num?)?.toDouble(),
      maximumDurationWithoutEndpointing:
          (json['maximum_duration_without_endpointing'] as num?)?.toDouble(),
      languageConfig: LiveTranscriptionOptions._languageConfigFromJson(
          json['language_config'] as Map<String, dynamic>?),
      preProcessing: LiveTranscriptionOptions._preProcessingFromJson(
          json['pre_processing'] as Map<String, dynamic>?),
      realtimeProcessing: LiveTranscriptionOptions._realtimeProcessingFromJson(
          json['realtime_processing'] as Map<String, dynamic>?),
      postProcessing: LiveTranscriptionOptions._postProcessingFromJson(
          json['post_processing'] as Map<String, dynamic>?),
      messagesConfig: LiveTranscriptionOptions._messagesConfigFromJson(
          json['messages_config'] as Map<String, dynamic>?),
      callback: json['callback'] as bool?,
      callbackConfig: LiveTranscriptionOptions._callbackConfigFromJson(
          json['callback_config'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$LiveTranscriptionOptionsToJson(
        LiveTranscriptionOptions instance) =>
    <String, dynamic>{
      if (LiveTranscriptionOptions._encodingToJson(instance.encoding)
          case final value?)
        'encoding': value,
      if (LiveTranscriptionOptions._bitDepthToJson(instance.bitDepth)
          case final value?)
        'bit_depth': value,
      if (LiveTranscriptionOptions._sampleRateToJson(instance.sampleRate)
          case final value?)
        'sample_rate': value,
      if (instance.channels case final value?) 'channels': value,
      if (instance.customMetadata case final value?) 'custom_metadata': value,
      if (instance.model case final value?) 'model': value,
      if (instance.endpointing case final value?) 'endpointing': value,
      if (instance.maximumDurationWithoutEndpointing case final value?)
        'maximum_duration_without_endpointing': value,
      if (LiveTranscriptionOptions._languageConfigToJson(
              instance.languageConfig)
          case final value?)
        'language_config': value,
      if (LiveTranscriptionOptions._preProcessingToJson(instance.preProcessing)
          case final value?)
        'pre_processing': value,
      if (LiveTranscriptionOptions._realtimeProcessingToJson(
              instance.realtimeProcessing)
          case final value?)
        'realtime_processing': value,
      if (LiveTranscriptionOptions._postProcessingToJson(
              instance.postProcessing)
          case final value?)
        'post_processing': value,
      if (LiveTranscriptionOptions._messagesConfigToJson(
              instance.messagesConfig)
          case final value?)
        'messages_config': value,
      if (instance.callback case final value?) 'callback': value,
      if (LiveTranscriptionOptions._callbackConfigToJson(
              instance.callbackConfig)
          case final value?)
        'callback_config': value,
    };
