import 'package:get_it/get_it.dart';
import 'package:template_project/services/navigation_service/navigation_services.dart';

import '../../app/data/data_sources/local_message/message_local_data_source_imp.dart';
import '../../app/data/data_sources/remote_message/message_remote_data_source_imp.dart';
import '../../app/data/repositories/message_repository_imp.dart';
import '../../app/domain/use_cases/message_use_case.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => NavigationService());

  sl.registerFactory(<MessageLocalDataSource>() => MessageLocalDataSourceImp());
  sl.registerFactory(
    <MessageRemoteDataSource>() => MessageRemoteDataSourceImp(),
  );

  sl.registerFactory(
    <MessageRepository>() =>
        MessageRepositoryImp(localDataSource: sl(), remoteDataSource: sl()),
  );

  sl.registerFactory(() => MessageUseCase(sl()));
}
