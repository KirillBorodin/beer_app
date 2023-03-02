import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/repositories/beers_repository.dart';

class GetBeersUseCase {
  final BeersRepository _repository;

  const GetBeersUseCase(this._repository);

  Stream<List<Beer>> call() {
    return _repository.getBeers();
  }
}
