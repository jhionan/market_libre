import 'package:dio/dio.dart';
import 'package:market_libre/features/home/data/models/search_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api.g.dart';

@RestApi()
abstract class SearchApi {
  factory SearchApi(Dio dio) = _SearchApi;

  @GET(
    "/sites/MLU/search",
  )
  Stream<SearchDto> search(
    @Query("q") String query,
    @Query("limit") int limit,
    @Query("offset") int offset,
  );
}
