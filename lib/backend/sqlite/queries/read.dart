import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETPRODUCTS
Future<List<GetProductsRow>> performGetProducts(
  Database database,
) {
  final query = '''
Select * From productos;
''';
  return _readQuery(database, query, (d) => GetProductsRow(d));
}

class GetProductsRow extends SqliteRow {
  GetProductsRow(Map<String, dynamic> data) : super(data);

  int get id => data['id'] as int;
  String get nombre => data['nombre'] as String;
  int get cantidadDisponible => data['cantidad_disponible'] as int;
  double get precioVenta => data['precio_venta'] as double;
  int get categoriaId => data['categoria_id'] as int;
}

/// END GETPRODUCTS
