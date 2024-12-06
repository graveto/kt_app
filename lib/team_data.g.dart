// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      label: json['label'] as String,
      teamInfo: (json['teamInfo'] as List<dynamic>)
          .map((e) => TeamInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'label': instance.label,
      'teamInfo': instance.teamInfo,
    };

TeamInfo _$TeamInfoFromJson(Map<String, dynamic> json) => TeamInfo(
      label: json['label'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$TeamInfoToJson(TeamInfo instance) => <String, dynamic>{
      'label': instance.label,
      'path': instance.path,
    };
