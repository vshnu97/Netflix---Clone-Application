// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_and_new_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotAndNewResp _$HotAndNewRespFromJson(Map<String, dynamic> json) =>
    HotAndNewResp(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>)
          .map((e) => HotAndNewData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotAndNewRespToJson(HotAndNewResp instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

HotAndNewData _$HotAndNewDataFromJson(Map<String, dynamic> json) =>
    HotAndNewData(
      backdropPath: json['backdrop_path'] as String?,
      releaseDate: json['first_air_date'] as String?,
      id: json['id'] as int?,
      orginalTitle: json['original_name'] as String?,
      posterPath: json['poster_path'] as String?,
      title: json['name'] as String?,
      orginalLanguage: json['original_language'] as String?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$HotAndNewDataToJson(HotAndNewData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.releaseDate,
      'id': instance.id,
      'original_language': instance.orginalLanguage,
      'overview': instance.overview,
      'original_name': instance.orginalTitle,
      'name': instance.title,
      'poster_path': instance.posterPath,
    };
