import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/use_cases/fetch_beers_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beers_cubit.freezed.dart';

class BeersCubit extends Cubit<BeersState> {
  final FetchBeersUseCase _fetchBeersUseCase;

  BeersCubit(this._fetchBeersUseCase) : super(const BeersState()) {
    _fetchBeers();
  }

  Future<void> _fetchBeers() async {
    emit(state.copyWith(isLoading: true));
    final beers = await _fetchBeersUseCase();
    emit(state.copyWith(isLoading: false, beers: beers));
  }
}

@freezed
class BeersState with _$BeersState {
  const factory BeersState({
    @Default(false) bool isLoading,
    @Default([]) List<Beer> beers,
  }) = _BeersState;
}
