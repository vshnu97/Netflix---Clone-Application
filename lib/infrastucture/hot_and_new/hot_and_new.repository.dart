import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/new_hot/hot_and_new_service.dart';
import 'package:netflix/domain/new_hot/models/hot_and_new_resp.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewRepository implements HotAndNewService {
  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData() async {
    try {
      final  response =
          await Dio(BaseOptions()).get(ApiEndPoints.hotAndNewMovie);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clienFailure());
    } catch (e) {
      return const Left(MainFailure.clienFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData() async {
    try {
      final  response =
          await Dio(BaseOptions()).get(ApiEndPoints.hotAndNewTv);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final results = HotAndNewResp.fromJson(response.data);

        return Right(results);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clienFailure());
    } catch (_) {
      return const Left(MainFailure.clienFailure());
    }
  }
}
