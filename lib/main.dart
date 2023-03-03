import 'package:beer_app/color_schemes.g.dart';
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
  final local =
      await $FloorBeersDataBase.databaseBuilder('app_database.db').build();
  final remote = BeersApi(Dio());
  runApp(BeerApp(local: local, remote: remote));
}

class BeerApp extends StatelessWidget {
  final BeersDataBase local;
  final BeersApi remote;

  const BeerApp({
    required this.local,
    required this.remote,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: lightColorScheme),
      darkTheme: ThemeData(colorScheme: darkColorScheme),
      home: MultiBlocProvider(
        providers: [
          RepositoryProvider(
            create: (context) => BeersLocalDataSource(local),
          ),
          RepositoryProvider(
            create: (context) => BeersRemoteDataSource(remote),
          ),
          RepositoryProvider(
            create: (context) => BeersRepository(
              context.read(),
              context.read(),
            ),
          ),
        ],
        child: BlocProvider(
          create: (context) => BeersCubit(
            FetchBeersUseCase(context.read()),
            GetBeersUseCase(context.read()),
          ),
          child: const HomePage(),
        ),
      ),
    );
  }
}
