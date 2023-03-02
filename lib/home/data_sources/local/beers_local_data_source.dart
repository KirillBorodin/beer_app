
import 'package:beer_app/home/data_sources/local/db/beers_database.dart';
import 'package:beer_app/home/data_sources/local/db/entity/beer_entity.dart';

class BeersLocalDataSource {

  BeersLocalDataSource() {
    _init();
  }

  Future<void> _init() async  {
    _local = await $FloorBeersDataBase
        .databaseBuilder('app_database.db')
        .build();
  }

  late BeersDataBase _local;

  Future<List<BeerEntity>> getBeers() {
    return _local.beerDao.getBeers();
  }

  Future<void> updateBeers(List<BeerEntity> beers) async {
    return _local.beerDao.updateBeers(beers);
  }
}