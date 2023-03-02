import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/data_sources/remote/api/beers_api.dart';
import 'package:beer_app/home/dtos/beer_dto.dart';

class BeersRemoteDataSource {
  final BeersApi api;

  const BeersRemoteDataSource(this.api);

  Future<List<Beer>> fetchBeers() async {
    final response = await api.fetchBeers();
    return response.map((dto) => dto.toBo()).toList();
  }
}
