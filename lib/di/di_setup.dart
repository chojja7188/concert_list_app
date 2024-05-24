import 'package:concert_list_app/data/data_source/concert_api.dart';
import 'package:concert_list_app/data/repository_impl/concert_repository_impl.dart';
import 'package:concert_list_app/domain/repository/concert_repository.dart';
import 'package:concert_list_app/presentation/archive/archive_view_model.dart';
import 'package:concert_list_app/presentation/concert_detail/concert_detail_view_model.dart';
import 'package:concert_list_app/presentation/home/home_view_model.dart';
import 'package:concert_list_app/presentation/search/search_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  // registerSingleton
  getIt.registerSingleton<ConcertApi>(ConcertApi());
  getIt.registerSingleton<ConcertRepository>(ConcertRepositoryImpl(api: getIt()));

  // registerFactory
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel(repository: getIt()));
  getIt.registerFactory<SearchViewModel>(() => SearchViewModel(repository: getIt()));
  getIt.registerFactory<ArchiveViewModel>(() => ArchiveViewModel(repository: getIt()));
  getIt.registerFactory<ConcertDetailViewModel>(() => ConcertDetailViewModel(repository: getIt()));
}