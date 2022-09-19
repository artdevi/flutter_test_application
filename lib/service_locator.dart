import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/data/database/database.dart';
import 'package:flutter_application_1/core/platform/network_info.dart';
import 'package:flutter_application_1/core/api/api_client.dart';
import 'package:flutter_application_1/feature/cart/data/datasources/cart_local_datasource.dart';
import 'package:flutter_application_1/feature/cart/data/datasources/cart_remote_datasource.dart';
import 'package:flutter_application_1/feature/cart/data/repositories/cart_repository_impl.dart';
import 'package:flutter_application_1/feature/cart/domain/repositories/cart_data_repository.dart';
import 'package:flutter_application_1/feature/cart/domain/usecases/get_cart_data.dart';
import 'package:flutter_application_1/feature/cart/presentation/bloc/cart_bloc.dart';
import 'package:flutter_application_1/feature/details/data/datasources/details_local_datasource.dart';
import 'package:flutter_application_1/feature/details/data/datasources/details_remote_datasource.dart';
import 'package:flutter_application_1/feature/details/data/repositories/details_data_repository_impl.dart';
import 'package:flutter_application_1/feature/details/domain/repositories/details_data_repository.dart';
import 'package:flutter_application_1/feature/details/domain/usecases/get_details_data.dart';
import 'package:flutter_application_1/feature/details/presentation/bloc/details_bloc.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_local_database.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_local_datasource.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_remote_datasource.dart';
import 'package:flutter_application_1/feature/home/data/repositories/home_data_repository_impl.dart';
import 'package:flutter_application_1/feature/home/domain/repositories/home_data_repository.dart';
import 'package:flutter_application_1/feature/home/domain/usecases/get_home_data.dart';
import 'package:flutter_application_1/feature/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => ApiClient(sl()));

  // dio retrofit
  sl.registerLazySingleton<Dio>(() => Dio());

  // DB
  final database =
      await $FloorAppDatabase.databaseBuilder('flutter_app.db').build();

  sl.registerSingleton<AppDatabase>(database);
  // BLoC
  sl.registerFactory(() => HomeBloc(sl()));
  sl.registerFactory(() => DetailsBloc(sl()));
  sl.registerFactory(() => CartBloc(sl()));

  // UseCases
  sl.registerLazySingleton(() => GetHomeData(sl()));
  sl.registerLazySingleton(() => GetDetailsData(sl()));
  sl.registerLazySingleton(() => GetCartData(sl()));

  // Repository
  sl.registerLazySingleton<CartDataRepository>(() => CartDataRepositoryImpl(
        cartRemoteDataSource: sl(),
        cartLocalDataSource: sl(),
        networkInfo: sl(),
      ));

  sl.registerLazySingleton<HomeDataRepository>(() => HomeDataRepositoryImpl(
        homeRemoteDataSource: sl(),
        homeLocalDataSource: sl(),
        networkInfo: sl(),
      ));

  sl.registerLazySingleton<DetailsDataRepository>(
      () => DetailsDataRepositoryImpl(
            detailsRemoteDataSource: sl(),
            detailsLocalDataSource: sl(),
            networkInfo: sl(),
          ));

  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<DetailsRemoteDataSource>(
    () => DetailsRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<CartRemoteDataSource>(
    () => CartRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDatabase(sl()),
  );

  sl.registerLazySingleton<DetailsLocalDataSource>(
    () => DetailsLocalDataSourceImpl(sl()),
  );

  sl.registerLazySingleton<CartLocalDataSource>(
    () => CartLocalDataSourceImpl(sl()),
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
