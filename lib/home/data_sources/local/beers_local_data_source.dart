import 'package:beer_app/home/data_sources/local/db/beers_database.dart';
import 'package:beer_app/home/data_sources/local/db/entity/beer_entity.dart';

class BeersLocalDataSource {
  BeersLocalDataSource(this._local);

  final BeersDataBase _local;

  Stream<List<BeerEntity>> getBeers() {
    return _local.beerDao.getBeers();
  }

  Future<void> updateBeers(List<BeerEntity> beers) async {
    return _local.beerDao.updateBeers(beers);
  }
}
