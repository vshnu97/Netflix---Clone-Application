// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResp _$SearchRespFromJson(Map<String, dynamic> json) => SearchResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchREsultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchRespToJson(SearchResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchREsultData _$SearchREsultDataFromJson(Map<String, dynamic> json) =>
    SearchREsultData(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchREsultDataToJson(SearchREsultData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
