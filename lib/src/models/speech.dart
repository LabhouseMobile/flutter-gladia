import 'package:gladia/gladia.dart';

/// Class for messages received from API during real-time speech recognition
class SpeechMessage extends RealtimeMessage {
  /// Session ID
  final String sessionId;

  /// Message creation time
  final DateTime createdAt;

  /// Message data
  final SpeechMessageData data;

  /// Creates a new instance of [SpeechMessage]
  const SpeechMessage({
    required super.type,
    required this.sessionId,
    required this.createdAt,
    required this.data,
  });

  /// Creates [SpeechMessage] from JSON data
  factory SpeechMessage.fromJson(Map<String, dynamic> json) {
    return SpeechMessage(
      type: json['type'] as String,
      sessionId: json['session_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      data: SpeechMessageData.fromJson(json['data'] as Map<String, dynamic>),
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
class SpeechMessageData {
  final double time;

  final int channel;

  /// Creates a new instance of [SpeechMessageData]
  const SpeechMessageData({
    required this.time,
    required this.channel,
  });

  /// Creates [SpeechMessageData] from JSON data
  factory SpeechMessageData.fromJson(Map<String, dynamic> json) {
    return SpeechMessageData(
      time: json['time'] as double,
      channel: json['channel'] as int,
    );
  }

  /// Converts object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'time': time.toString(),
      'channel': channel.toString(),
    };
  }

  @override
  String toString() => 'SpeechStartMessageData(time: $time, channel: $channel)';
}
