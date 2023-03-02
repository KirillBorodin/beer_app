import 'package:beer_app/home/data_sources/remote/api/beers_api.dart';
import 'package:beer_app/home/dtos/beer_dto.dart';

class BeersRemoteDataSource {
  final BeersApi api;

  const BeersRemoteDataSource(this.api);

  Future<List<BeerDto>> fetchBeers() {
    return api.fetchBeers();
  }
}
