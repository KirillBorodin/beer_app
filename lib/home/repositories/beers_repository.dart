import 'package:beer_app/home/business_objects/beer.dart';
import 'package:beer_app/home/data_sources/local/beers_local_data_source.dart';
import 'package:beer_app/home/data_sources/local/db/entity/beer_entity.dart';
import 'package:beer_app/home/data_sources/remote/beers_remote_data_source.dart';
import 'package:beer_app/home/dtos/beer_dto.dart';

class BeersRepository {
  final BeersRemoteDataSource _remote;
  final BeersLocalDataSource _local;

  const BeersRepository(this._remote, this._local);

  Future<void> fetchBeers() async {
    final dtos = await _remote.fetchBeers();
    await _local.updateBeers(dtos.map((dto) => dto.toEntity()).toList());
  }

  Stream<List<Beer>> getBeers() {
    return _local
        .getBeers()
        .map((entities) => entities.map((entity) => entity.toBo()).toList());
  }
}
