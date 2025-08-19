import 'package:gladia/gladia.dart';

/// Class for messages received from API during real-time speech recognition
class TranslationMessage extends RealtimeMessage {
  /// Session ID
  final String sessionId;

  /// Message creation time
  final DateTime createdAt;

  /// Message data
  final TranslationMessageData data;

  /// Creates a new instance of [TranslationMessage]
  const TranslationMessage({
    required super.type,
    required this.sessionId,
    required this.createdAt,
    required this.data,
  });

  /// Creates [TranslationMessage] from JSON data
  factory TranslationMessage.fromJson(Map<String, dynamic> json) {
    return TranslationMessage(
      type: json['type'] as String,
      sessionId: json['session_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: TranslationMessageData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  /// Converts object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'session_id': sessionId,
      'created_at': createdAt.toIso8601String(),
      'data': data.toJson(),
    };
  }

  @override
  String toString() => 'TranslationMessage(type: $type, sessionId: $sessionId, createdAt: $createdAt, data: $data)';
}

/// Transcription message data
class TranslationMessageData {
  /// Utterance ID
  final String utteranceId;

  /// Utterance information
  final UtteranceInfo utterance;
  final UtteranceInfo translatedUtterance;

  final String originalLanguage;

  final String targetLanguage;

  /// Creates a new instance of [TranslationMessageData]
  const TranslationMessageData({
    required this.utteranceId,
    required this.utterance,
    required this.translatedUtterance,
    required this.originalLanguage,
    required this.targetLanguage,
  });

  /// Creates [TranslationMessageData] from JSON data
  factory TranslationMessageData.fromJson(Map<String, dynamic> json) {
    return TranslationMessageData(
      utteranceId: json['utterance_id'] as String,
      utterance: UtteranceInfo.fromJson(json['utterance'] as Map<String, dynamic>),
      translatedUtterance: UtteranceInfo.fromJson(json['translated_utterance'] as Map<String, dynamic>),
      originalLanguage: json['original_language'] as String,
      targetLanguage: json['target_language'] as String,
    );
  }

  /// Converts object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': utteranceId,
      'utterance': utterance.toJson(),
      'translated_utterance': translatedUtterance.toJson(),
      'original_language': originalLanguage,
      'target_language': targetLanguage,
    };
  }

  @override
  String toString() =>
      'TranslationMessageData(id: $utteranceId, utterance: $utterance, translatedUtterance: $translatedUtterance, originalLanguage: $originalLanguage, targetLanguage: $targetLanguage)';
}

/// Utterance information defined in transcription_message.dart
// class UtteranceInfo {
//   /// Utterance text
//   final String text;

//   /// Utterance start time (in seconds)
//   final double start;

//   /// Utterance end time (in seconds)
//   final double end;

//   /// Utterance language (ISO code)
//   final String language;

//   /// Channel number (for multi-channel audio)
//   final int? channel;

//   /// Creates a new instance of [UtteranceInfo]
//   const UtteranceInfo({
//     required this.text,
//     required this.start,
//     required this.end,
//     required this.language,
//     this.channel,
//   });

//   /// Creates [UtteranceInfo] from JSON data
//   factory UtteranceInfo.fromJson(Map<String, dynamic> json) {
//     return UtteranceInfo(
//       text: json['text'] as String,
//       start: (json['start'] as num).toDouble(),
//       end: (json['end'] as num).toDouble(),
//       language: json['language'] as String,
//       channel: json['channel'] as int?,
//     );
//   }

//   /// Converts object to JSON data
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {
//       'text': text,
//       'start': start,
//       'end': end,
//       'language': language,
//     };
//     if (channel != null) {
//       data['channel'] = channel;
//     }
//     return data;
//   }

//   @override
//   String toString() => 'UtteranceInfo(text: $text, start: $start, end: $end, language: $language, channel: $channel)';
// }
