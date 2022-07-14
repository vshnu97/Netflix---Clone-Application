import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/search/model/search_service.dart';

import '../../domain/downloads/models/download.dart';
import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _downloadService;
  final SearchService _searchService;
  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    //idle state

    on<Initialize>((event, emit)async {
if(state.idleLIst.isNotEmpty){
 emit( SearchState(
        searchResultList: [], 
        idleLIst: state.idleLIst, 
        isLoading: false,
         isError: false));
  return;
}
      
      //get trending
    final result = await  _downloadService.getDownloadsImage();
    log(result.toString());
   final _state = result.fold((MainFailure f) {
    return  const SearchState(
        searchResultList: [], 
        idleLIst: [], 
        isLoading: false,
         isError: true);
    }, 
    (List<Downloads> list){
     return  SearchState(
        searchResultList: [], 
        idleLIst: list, 
        isLoading: false,
         isError: false);
    });

      //show to ui
      emit(_state);
    });

//search result state

    on<SearchMovie>((event, emit) {
      _searchService.searchMovies(movieQuery: event.movieQuery);
    });
  }
}
