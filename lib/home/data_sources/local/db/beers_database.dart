import 'dart:async';

import 'package:beer_app/home/data_sources/local/db/dao/beer_dao.dart';
import 'package:beer_app/home/data_sources/local/db/entity/beer_entity.dart';
import 'package:floor/floor.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

part 'beers_database.g.dart';

@Database(
  version: 1,
  entities: [BeerEntity],
)
abstract class BeersDataBase extends FloorDatabase {
  BeerDao get beerDao;
}
