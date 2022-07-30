// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  GetHomeScreenData getHomeScreenData() {
    return const GetHomeScreenData();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $GetHomeScreenDataCopyWith<$Res> {
  factory $GetHomeScreenDataCopyWith(
          GetHomeScreenData value, $Res Function(GetHomeScreenData) then) =
      _$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GetHomeScreenDataCopyWith<$Res> {
  _$GetHomeScreenDataCopyWithImpl(
      GetHomeScreenData _value, $Res Function(GetHomeScreenData) _then)
      : super(_value, (v) => _then(v as GetHomeScreenData));

  @override
  GetHomeScreenData get _value => super._value as GetHomeScreenData;
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial call(
      {required String stateid,
      required List<HotAndNewData> pastYearMovieData,
      required List<HotAndNewData> trendingMovieData,
      required List<HotAndNewData> tenseDramaMovieData,
      required List<HotAndNewData> southIndianMovieData,
      required List<HotAndNewData> trendingTvShowList,
      required bool isLoading,
      required bool hasError}) {
    return _Initial(
      stateid: stateid,
      pastYearMovieData: pastYearMovieData,
      trendingMovieData: trendingMovieData,
      tenseDramaMovieData: tenseDramaMovieData,
      southIndianMovieData: southIndianMovieData,
      trendingTvShowList: trendingTvShowList,
      isLoading: isLoading,
      hasError: hasError,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  String get stateid => throw _privateConstructorUsedError;
  List<HotAndNewData> get pastYearMovieData =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingMovieData =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get tenseDramaMovieData =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get southIndianMovieData =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingTvShowList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String stateid,
      List<HotAndNewData> pastYearMovieData,
      List<HotAndNewData> trendingMovieData,
      List<HotAndNewData> tenseDramaMovieData,
      List<HotAndNewData> southIndianMovieData,
      List<HotAndNewData> trendingTvShowList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? stateid = freezed,
    Object? pastYearMovieData = freezed,
    Object? trendingMovieData = freezed,
    Object? tenseDramaMovieData = freezed,
    Object? southIndianMovieData = freezed,
    Object? trendingTvShowList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      stateid: stateid == freezed
          ? _value.stateid
          : stateid // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieData: pastYearMovieData == freezed
          ? _value.pastYearMovieData
          : pastYearMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingMovieData: trendingMovieData == freezed
          ? _value.trendingMovieData
          : trendingMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramaMovieData: tenseDramaMovieData == freezed
          ? _value.tenseDramaMovieData
          : tenseDramaMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianMovieData: southIndianMovieData == freezed
          ? _value.southIndianMovieData
          : southIndianMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingTvShowList: trendingTvShowList == freezed
          ? _value.trendingTvShowList
          : trendingTvShowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateid,
      List<HotAndNewData> pastYearMovieData,
      List<HotAndNewData> trendingMovieData,
      List<HotAndNewData> tenseDramaMovieData,
      List<HotAndNewData> southIndianMovieData,
      List<HotAndNewData> trendingTvShowList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stateid = freezed,
    Object? pastYearMovieData = freezed,
    Object? trendingMovieData = freezed,
    Object? tenseDramaMovieData = freezed,
    Object? southIndianMovieData = freezed,
    Object? trendingTvShowList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_Initial(
      stateid: stateid == freezed
          ? _value.stateid
          : stateid // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieData: pastYearMovieData == freezed
          ? _value.pastYearMovieData
          : pastYearMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingMovieData: trendingMovieData == freezed
          ? _value.trendingMovieData
          : trendingMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramaMovieData: tenseDramaMovieData == freezed
          ? _value.tenseDramaMovieData
          : tenseDramaMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianMovieData: southIndianMovieData == freezed
          ? _value.southIndianMovieData
          : southIndianMovieData // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingTvShowList: trendingTvShowList == freezed
          ? _value.trendingTvShowList
          : trendingTvShowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateid,
      required this.pastYearMovieData,
      required this.trendingMovieData,
      required this.tenseDramaMovieData,
      required this.southIndianMovieData,
      required this.trendingTvShowList,
      required this.isLoading,
      required this.hasError});

  @override
  final String stateid;
  @override
  final List<HotAndNewData> pastYearMovieData;
  @override
  final List<HotAndNewData> trendingMovieData;
  @override
  final List<HotAndNewData> tenseDramaMovieData;
  @override
  final List<HotAndNewData> southIndianMovieData;
  @override
  final List<HotAndNewData> trendingTvShowList;
  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(stateid: $stateid, pastYearMovieData: $pastYearMovieData, trendingMovieData: $trendingMovieData, tenseDramaMovieData: $tenseDramaMovieData, southIndianMovieData: $southIndianMovieData, trendingTvShowList: $trendingTvShowList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.stateid, stateid) &&
            const DeepCollectionEquality()
                .equals(other.pastYearMovieData, pastYearMovieData) &&
            const DeepCollectionEquality()
                .equals(other.trendingMovieData, trendingMovieData) &&
            const DeepCollectionEquality()
                .equals(other.tenseDramaMovieData, tenseDramaMovieData) &&
            const DeepCollectionEquality()
                .equals(other.southIndianMovieData, southIndianMovieData) &&
            const DeepCollectionEquality()
                .equals(other.trendingTvShowList, trendingTvShowList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateid),
      const DeepCollectionEquality().hash(pastYearMovieData),
      const DeepCollectionEquality().hash(trendingMovieData),
      const DeepCollectionEquality().hash(tenseDramaMovieData),
      const DeepCollectionEquality().hash(southIndianMovieData),
      const DeepCollectionEquality().hash(trendingTvShowList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required String stateid,
      required List<HotAndNewData> pastYearMovieData,
      required List<HotAndNewData> trendingMovieData,
      required List<HotAndNewData> tenseDramaMovieData,
      required List<HotAndNewData> southIndianMovieData,
      required List<HotAndNewData> trendingTvShowList,
      required bool isLoading,
      required bool hasError}) = _$_Initial;

  @override
  String get stateid;
  @override
  List<HotAndNewData> get pastYearMovieData;
  @override
  List<HotAndNewData> get trendingMovieData;
  @override
  List<HotAndNewData> get tenseDramaMovieData;
  @override
  List<HotAndNewData> get southIndianMovieData;
  @override
  List<HotAndNewData> get trendingTvShowList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
