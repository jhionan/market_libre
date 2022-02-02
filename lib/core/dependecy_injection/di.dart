import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/home/data/api/search_api.dart';
import '../../features/home/domain/search_datasource.dart';
import '../../features/home/presentation/cubit/search_cubit.dart';
import '../db/isar_db.dart';
import '../http_server/environment_configuration.dart';
import '../http_server/http_client.dart';

abstract class Di {
  Di._();

  static final Provider<HttpClient> httpClientProvider = Provider((ref) {
    return HttpClient(baseUrl: EnvironmentConfiguration.prodUrl);
  });
}

abstract class SearchDi {
  SearchDi._();

  static final Provider<SearchApi> searchApi = Provider((ref) {
    HttpClient _httpClient = ref.read(Di.httpClientProvider);
    return SearchApi(_httpClient.dio);
  });

  static final Provider<SearchDatasource> searchDatasourceProvider = Provider(
    (ref) {
      return SearchDatasource(
        ref.read(searchApi),
        IsarDb.instance,
      );
    },
  );

  static final AutoDisposeProvider<SearchCubit> searchCubitProvider =
      Provider.autoDispose((ref) {
    SearchCubit _searchBloc = SearchCubit(ref.read(searchDatasourceProvider));
    ref.onDispose(() {
      _searchBloc.close();
    });
    return _searchBloc;
  });
}
