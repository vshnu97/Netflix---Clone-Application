import 'package:json_annotation/json_annotation.dart';
part 'hot_and_new_resp.g.dart';

@JsonSerializable()
class HotAndNewResp {
  
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<HotAndNewData> results;

  HotAndNewResp({this.page,required this.results});

  factory HotAndNewResp.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewRespToJson(this);
}

@JsonSerializable()
class HotAndNewData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'first_air_date')
  String? releaseDate;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? orginalLanguage;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'original_name')
  String? orginalTitle;

  @JsonKey(name: 'name')
  String? title;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  HotAndNewData({
    this.backdropPath,
    this.releaseDate,
    this.id,
    this.orginalTitle,
    this.posterPath,
    this.title,
    this.orginalLanguage,
    this.overview
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
