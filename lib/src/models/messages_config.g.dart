// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagesConfig _$MessagesConfigFromJson(Map<String, dynamic> json) =>
    MessagesConfig(
      receiveFinalTranscripts: json['receive_final_transcripts'] as bool?,
      receiveSpeechEvents: json['receive_speech_events'] as bool?,
      receivePreProcessingEvents:
          json['receive_pre_processing_events'] as bool?,
      receiveRealtimeProcessingEvents:
          json['receive_realtime_processing_events'] as bool?,
      receivePostProcessingEvents:
          json['receive_post_processing_events'] as bool?,
      receiveAcknowledgments: json['receive_acknowledgments'] as bool?,
      receiveErrors: json['receive_errors'] as bool?,
      receiveLifecycleEvents: json['receive_lifecycle_events'] as bool?,
      receivePartialTranscripts: json['receive_partial_transcripts'] as bool?,
    );

Map<String, dynamic> _$MessagesConfigToJson(MessagesConfig instance) =>
    <String, dynamic>{
      if (instance.receiveFinalTranscripts case final value?)
        'receive_final_transcripts': value,
      if (instance.receiveSpeechEvents case final value?)
        'receive_speech_events': value,
      if (instance.receivePreProcessingEvents case final value?)
        'receive_pre_processing_events': value,
      if (instance.receiveRealtimeProcessingEvents case final value?)
        'receive_realtime_processing_events': value,
      if (instance.receivePostProcessingEvents case final value?)
        'receive_post_processing_events': value,
      if (instance.receiveAcknowledgments case final value?)
        'receive_acknowledgments': value,
      if (instance.receiveErrors case final value?) 'receive_errors': value,
      if (instance.receiveLifecycleEvents case final value?)
        'receive_lifecycle_events': value,
      if (instance.receivePartialTranscripts case final value?)
        'receive_partial_transcripts': value,
    };
