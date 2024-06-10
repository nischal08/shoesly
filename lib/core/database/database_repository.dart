import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/core/database/hive_database_helper.dart';
import 'package:shoesly/core/values/constants/database_constants.dart';

final databaseHelperProvider = Provider<DatabaseHelper>((ref) {
  return DatabaseHelper(); // Assuming you have DatabaseHelper implementation
});

final databaseRepositoryProvider = Provider<DatabaseRepository>((ref) {
  final databaseHelper = ref.watch(databaseHelperProvider);
  return DatabaseRepository(databaseHelper);
});

class DatabaseRepository {
  final DatabaseHelper databaseHelper;

  DatabaseRepository(this.databaseHelper);
  Future<void> saveToken(String accessToken) async {
    await DatabaseHelper().addBoxItem(
      key: DatabaseKey.accessToken,
      value: accessToken.toString(),
      boxId: DatabaseBoxId.auth,
    );
  }

  Future<String> getToken() async {
    final String? accessToken = await databaseHelper.getBoxItem(
      key: DatabaseKey.accessToken,
      boxId: DatabaseBoxId.auth,
    );

    return accessToken ?? "";
  }

  Future<bool> deleteAccessToken() async {
    await databaseHelper.deleteBoxItem(
      key: DatabaseKey.accessToken,
      boxId: DatabaseBoxId.auth,
    );
    return true;
  }
}
