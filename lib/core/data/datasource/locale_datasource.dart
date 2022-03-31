abstract class LocalDatasource {
  Future<dynamic> getAllData();
  Future<void> updateData();
  Future<void> createData();
}

class HiveLocalDatasource implements LocalDatasource {
  @override
  Future<void> createData() {
    // TODO: implement createData
    throw UnimplementedError();
  }

  @override
  Future getAllData() {
    // TODO: implement getAllData
    throw UnimplementedError();
  }

  @override
  Future<void> updateData() {
    // TODO: implement updateData
    throw UnimplementedError();
  }
}
