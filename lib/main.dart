import 'package:beer_app/home/cubit/beers_cubit.dart';
import 'package:beer_app/home/data_sources/local/beers_local_data_source.dart';
import 'package:beer_app/home/data_sources/local/db/beers_database.dart';
import 'package:beer_app/home/data_sources/remote/api/beers_api.dart';
import 'package:beer_app/home/data_sources/remote/beers_remote_data_source.dart';
import 'package:beer_app/home/repositories/beers_repository.dart';
import 'package:beer_app/home/ui/home_page.dart';
import 'package:beer_app/home/use_cases/fetch_beers_use_case.dart';
import 'package:beer_app/home/use_cases/get_beers_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db =
      await $FloorBeersDataBase.databaseBuilder('app_database.db').build();
  runApp(BeerApp(db: db));
}

class BeerApp extends StatelessWidget {
  final BeersDataBase db;

  const BeerApp({Key? key, required this.db}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          RepositoryProvider(create: (context) => BeersLocalDataSource(db)),
          RepositoryProvider(
            create: (context) => BeersRemoteDataSource(BeersApi(Dio())),
          ),
        ],
        child: RepositoryProvider(
          create: (BuildContext context) {
            return BeersRepository(
              context.read(),
              context.read(),
            );
          },
          child: BlocProvider(
            create: (context) => BeersCubit(
              FetchBeersUseCase(context.read()),
              GetBeersUseCase(context.read()),
            ),
            child: const HomePage(),
          ),
        ),
      ),
    );
  }
}
