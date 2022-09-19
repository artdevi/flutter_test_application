// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
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
            'CREATE TABLE IF NOT EXISTS `BestSellerModel` (`id` INTEGER NOT NULL, `isFavorites` INTEGER NOT NULL, `title` TEXT NOT NULL, `priceWithoutDiscount` INTEGER NOT NULL, `discountPrice` INTEGER NOT NULL, `pictureURL` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `HotSaleModel` (`id` INTEGER NOT NULL, `isNew` INTEGER, `title` TEXT NOT NULL, `subtitle` TEXT NOT NULL, `pictureURL` TEXT NOT NULL, `isBuy` INTEGER NOT NULL, PRIMARY KEY (`id`))');

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
        _bestSellerModelInsertionAdapter = InsertionAdapter(
            database,
            'BestSellerModel',
            (BestSellerModel item) => <String, Object?>{
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

  final InsertionAdapter<BestSellerModel> _bestSellerModelInsertionAdapter;

  @override
  Future<List<BestSellerModel>> getBestSellers() async {
    return _queryAdapter.queryList('SELECT * FROM BestSellerModel',
        mapper: (Map<String, Object?> row) => BestSellerModel(
            id: row['id'] as int,
            isFavorites: (row['isFavorites'] as int) != 0,
            title: row['title'] as String,
            priceWithoutDiscount: row['priceWithoutDiscount'] as int,
            discountPrice: row['discountPrice'] as int,
            pictureURL: row['pictureURL'] as String));
  }

  @override
  Future<void> deleteBestSellers() async {
    await _queryAdapter.queryNoReturn('DELETE FROM BestSellerModel');
  }

  @override
  Future<void> insertBestSeller(BestSellerModel bestSeller) async {
    await _bestSellerModelInsertionAdapter.insert(
        bestSeller, OnConflictStrategy.replace);
  }
}

class _$HotSaleDao extends HotSaleDao {
  _$HotSaleDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _hotSaleModelInsertionAdapter = InsertionAdapter(
            database,
            'HotSaleModel',
            (HotSaleModel item) => <String, Object?>{
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

  final InsertionAdapter<HotSaleModel> _hotSaleModelInsertionAdapter;

  @override
  Future<List<HotSaleModel>> getHotSales() async {
    return _queryAdapter.queryList('SELECT * FROM HotSaleModel',
        mapper: (Map<String, Object?> row) => HotSaleModel(
            id: row['id'] as int,
            isNew: row['isNew'] == null ? null : (row['isNew'] as int) != 0,
            title: row['title'] as String,
            subtitle: row['subtitle'] as String,
            pictureURL: row['pictureURL'] as String,
            isBuy: (row['isBuy'] as int) != 0));
  }

  @override
  Future<void> deleteHotSale() async {
    await _queryAdapter.queryNoReturn('DELETE FROM HotSaleModel');
  }

  @override
  Future<void> insertHotSale(HotSaleModel bestSeller) async {
    await _hotSaleModelInsertionAdapter.insert(
        bestSeller, OnConflictStrategy.replace);
  }
}
