import 'package:beer_app/home/data_sources/local/db/entity/beer_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class BeerDao {
  @insert
  Future<void> insertBeers(List<BeerEntity> beers);

  @Query('DELETE FROM beer')
  Future<void> deleteBeers();

  @Query('SELECT * FROM beer')
  Stream<List<BeerEntity>> getBeers();

  @transaction
  Future<void> updateBeers(List<BeerEntity> beers) async {
    await deleteBeers();
    await insertBeers(beers);
  }
}
