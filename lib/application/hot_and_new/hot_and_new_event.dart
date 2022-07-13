part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewEvent with _$HotAndNewEvent {
  const factory HotAndNewEvent.loadDDataInComingSoon() = LoadDDataInComingSoon;
  const factory HotAndNewEvent.loadDatainEveryoneWatching() =
      LoadDatainEveryoneWatching;
}
