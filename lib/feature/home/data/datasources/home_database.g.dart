// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorHomeDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$HomeDatabaseBuilder databaseBuilder(String name) =>
      _$HomeDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$HomeDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$HomeDatabaseBuilder(null);
}

class _$HomeDatabaseBuilder {
  _$HomeDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$HomeDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$HomeDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<HomeDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$HomeDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$HomeDatabase extends HomeDatabase {
  _$HomeDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  BestSellerDao? _bestSellerDaoInstance;

  HotSaleDao? _hotSaleDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
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
            'CREATE TABLE IF NOT EXISTS `BestSellerEntity` (`id` INTEGER NOT NULL, `isFavorites` INTEGER NOT NULL, `title` TEXT NOT NULL, `priceWithoutDiscount` INTEGER NOT NULL, `discountPrice` INTEGER NOT NULL, `pictureURL` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `HotSaleEntity` (`id` INTEGER NOT NULL, `isNew` INTEGER, `title` TEXT NOT NULL, `subtitle` TEXT NOT NULL, `pictureURL` TEXT NOT NULL, `isBuy` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  BestSellerDao get bestSellerDao {
    return _bestSellerDaoInstance ??= _$BestSellerDao(database, changeListener);
  }

  @override
  HotSaleDao get hotSaleDao {
    return _hotSaleDaoInstance ??= _$HotSaleDao(database, changeListener);
  }
}

class _$BestSellerDao extends BestSellerDao {
  _$BestSellerDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _bestSellerEntityInsertionAdapter = InsertionAdapter(
            database,
            'BestSellerEntity',
            (BestSellerEntity item) => <String, Object?>{
                  'id': item.id,
                  'isFavorites': item.isFavorites ? 1 : 0,
                  'title': item.title,
                  'priceWithoutDiscount': item.priceWithoutDiscount,
                  'discountPrice': item.discountPrice,
                  'pictureURL': item.pictureURL
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BestSellerEntity> _bestSellerEntityInsertionAdapter;

  @override
  Future<List<BestSellerEntity>> getBestSellers() async {
    return _queryAdapter.queryList('SELECT * FROM best_sellers',
        mapper: (Map<String, Object?> row) => BestSellerEntity(
            id: row['id'] as int,
            isFavorites: (row['isFavorites'] as int) != 0,
            title: row['title'] as String,
            priceWithoutDiscount: row['priceWithoutDiscount'] as int,
            discountPrice: row['discountPrice'] as int,
            pictureURL: row['pictureURL'] as String));
  }

  @override
  Future<void> deleteBestSellers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM best_sellers');
  }

  @override
  Future<void> insertBestSeller(BestSellerEntity bestSeller) async {
    await _bestSellerEntityInsertionAdapter.insert(
        bestSeller, OnConflictStrategy.replace);
  }
}

class _$HotSaleDao extends HotSaleDao {
  _$HotSaleDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _hotSaleEntityInsertionAdapter = InsertionAdapter(
            database,
            'HotSaleEntity',
            (HotSaleEntity item) => <String, Object?>{
                  'id': item.id,
                  'isNew': item.isNew == null ? null : (item.isNew! ? 1 : 0),
                  'title': item.title,
                  'subtitle': item.subtitle,
                  'pictureURL': item.pictureURL,
                  'isBuy': item.isBuy ? 1 : 0
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<HotSaleEntity> _hotSaleEntityInsertionAdapter;

  @override
  Future<List<HotSaleEntity>> getHotSales() async {
    return _queryAdapter.queryList('SELECT * FROM hot_sales',
        mapper: (Map<String, Object?> row) => HotSaleEntity(
            id: row['id'] as int,
            isNew: row['isNew'] == null ? null : (row['isNew'] as int) != 0,
            title: row['title'] as String,
            subtitle: row['subtitle'] as String,
            pictureURL: row['pictureURL'] as String,
            isBuy: (row['isBuy'] as int) != 0));
  }

  @override
  Future<void> deleteHotSale() async {
    await _queryAdapter.queryNoReturn('DELETE FROM hot_sales');
  }

  @override
  Future<void> insertHotSale(HotSaleEntity bestSeller) async {
    await _hotSaleEntityInsertionAdapter.insert(
        bestSeller, OnConflictStrategy.replace);
  }
}
