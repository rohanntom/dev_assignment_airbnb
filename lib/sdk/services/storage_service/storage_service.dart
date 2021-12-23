import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

typedef Json = Map<String, Object?>;

class StorageService {
  static final StorageService _service = StorageService._internal();

  late Database _db;
  bool _isInitialized = false;

  factory StorageService() => _service;
  StorageService._internal();

  Future<void> store(String store, String key, Json value) async {
    await this._init();

    final storeRef = this._fetchStore(store);

    await storeRef.record(key).put(this._db, value, merge: true);
  }

  Future<Map<String, Object?>?> retrieve(String store, String key) async {
    await this._init();

    final storeRef = this._fetchStore(store);

    return await storeRef.record(key.trim()).get(this._db);
  }

  Future<void> delete(String store, String key) async {
    await this._init();

    final storeRef = this._fetchStore(store);

    await storeRef.record(key.trim()).delete(this._db);
  }

  Future<List<Json>> query(String store, List<Query> query) async {
    assert(query.isNotEmpty);
    await this._init();

    final storeRef = this._fetchStore(store);

    final finder = Finder(
      filter: Filter.and(
        query.map((t) => Filter.equals(t.key, t.value)).toList(),
      ),
    );

    final records = await storeRef.find(this._db, finder: finder);

    return records.map((t) => t.value).toList();
  }

  Future<List<Json>> retrieveAll(String store) async {
    await this._init();

    final storeRef = this._fetchStore(store);

    final records = await storeRef.find(this._db);
    return records.map((t) => t.value).toList();
  }

  Future<void> _init() async {
    if (this._isInitialized) return;

    final dir = await getApplicationDocumentsDirectory();
    final dbPath = join(dir.path, "floater_storage.db");
    this._db = await databaseFactoryIo.openDatabase(dbPath);
    this._isInitialized = true;
  }

  StoreRef<String, Map<String, Object?>> _fetchStore(String store) {
    final storeRef = StoreRef<String, Map<String, Object?>>(store);

    return storeRef;
  }
}

class Query {
  final String key;
  final String value;

  Query(this.key, this.value);
}
