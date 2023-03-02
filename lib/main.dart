import 'package:beer_app/home/cubit/beers_cubit.dart';
import 'package:beer_app/home/data_sources/local/beers_local_data_source.dart';
import 'package:beer_app/home/data_sources/remote/api/beers_api.dart';
import 'package:beer_app/home/data_sources/remote/beers_remote_data_source.dart';
import 'package:beer_app/home/repositories/beers_repository.dart';
import 'package:beer_app/home/ui/home_page.dart';
import 'package:beer_app/home/use_cases/fetch_beers_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BeerApp());
}

class BeerApp extends StatelessWidget {
  const BeerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          RepositoryProvider(create: (context) => BeersLocalDataSource()),
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
            create: (context) => BeersCubit(FetchBeersUseCase(context.read())),
            child: const HomePage(),
          ),
        ),
      ),
    );
  }
}
