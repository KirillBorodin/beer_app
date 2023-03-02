import 'dart:async';

import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/use_cases/fetch_beers_use_case.dart';
import 'package:beer_app/home/use_cases/get_beers_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beers_cubit.freezed.dart';

class BeersCubit extends Cubit<BeersState> {
  BeersCubit(
    this._fetchBeersUseCase,
    this._getBeersUseCase,
  ) : super(const BeersState()) {
    fetchBeers();
    _listenBeers();
  }

  final FetchBeersUseCase _fetchBeersUseCase;
  final GetBeersUseCase _getBeersUseCase;

  StreamSubscription<List<Beer>>? _beersSubscription;

  Future<void> fetchBeers() async {
    emit(state.copyWith(isLoading: true));
    await _fetchBeersUseCase();
    emit(state.copyWith(isLoading: false));
  }

  void _listenBeers() {
    final task = _getBeersUseCase();
    _beersSubscription = task.listen((beers) {
      emit(state.copyWith(beers: beers));
    });
  }

  @override
  Future<void> close() {
    _beersSubscription?.cancel();
    return super.close();
  }
}

@freezed
class BeersState with _$BeersState {
  const factory BeersState({
    @Default(false) bool isLoading,
    @Default([]) List<Beer> beers,
  }) = _BeersState;
}
