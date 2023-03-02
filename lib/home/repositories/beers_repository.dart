import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/data_sources/remote/beers_remote_data_source.dart';

class BeersRepository {
  final BeersRemoteDataSource remoteDataSource;

  const BeersRepository(this.remoteDataSource);

  Future<List<Beer>> getBeers() async {
    return remoteDataSource.fetchBeers();
  }
}
