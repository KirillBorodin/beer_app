// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beers_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorBeersDataBase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$BeersDataBaseBuilder databaseBuilder(String name) =>
      _$BeersDataBaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$BeersDataBaseBuilder inMemoryDatabaseBuilder() =>
      _$BeersDataBaseBuilder(null);
}

class _$BeersDataBaseBuilder {
  _$BeersDataBaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$BeersDataBaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$BeersDataBaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<BeersDataBase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$BeersDataBase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$BeersDataBase extends BeersDataBase {
  _$BeersDataBase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  BeerDao? _beerDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `beer` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `first_brewed` TEXT NOT NULL, `image_url` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  BeerDao get beerDao {
    return _beerDaoInstance ??= _$BeerDao(database, changeListener);
  }
}

class _$BeerDao extends BeerDao {
  _$BeerDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _beerEntityInsertionAdapter = InsertionAdapter(
            database,
            'beer',
            (BeerEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'first_brewed': item.description,
                  'image_url': item.imageUrl
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BeerEntity> _beerEntityInsertionAdapter;

  @override
  Future<void> deleteBeers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM beer');
  }

  @override
  Stream<List<BeerEntity>> getBeers() {
    return _queryAdapter.queryListStream('SELECT * FROM beer',
        mapper: (Map<String, Object?> row) => BeerEntity(
            id: row['id'] as int,
            name: row['name'] as String,
            description: row['first_brewed'] as String,
            imageUrl: row['image_url'] as String),
        queryableName: 'beer',
        isView: false);
  }

  @override
  Future<void> insertBeers(List<BeerEntity> beers) async {
    await _beerEntityInsertionAdapter.insertList(
        beers, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateBeers(List<BeerEntity> beers) async {
    if (database is sqflite.Transaction) {
      await super.updateBeers(beers);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$BeersDataBase(changeListener)
          ..database = transaction;
        await transactionDatabase.beerDao.updateBeers(beers);
      });
    }
  }
}
