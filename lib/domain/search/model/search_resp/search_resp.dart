import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/core/constant.dart';



part 'search_resp.g.dart';

@JsonSerializable()
class SearchResp {

  

   @JsonKey(name: 'results')
  List<SearchREsultData> results;

  SearchResp({ this.results = const []});

  factory SearchResp.fromJson(Map<String, dynamic> json) {
    return _$SearchRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}


@JsonSerializable()
class SearchREsultData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  String get backdropImageUrl => '$imageAppendUrl$backdropPath';

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;
 
  SearchREsultData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchREsultData.fromJson(Map<String, dynamic> json) {
    return _$SearchREsultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchREsultDataToJson(this);
}

