import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/repositories/beers_repository.dart';

class FetchBeersUseCase {
  final BeersRepository _repository;

  const FetchBeersUseCase(this._repository);

  Future<List<Beer>> call() async {
    return _repository.getBeers();
  }
}
