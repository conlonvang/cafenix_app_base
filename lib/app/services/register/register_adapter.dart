import 'package:hive_flutter/adapters.dart';

import '../../models/token/token_login_core.dart';

void registerAdapterHive() {
  Hive.registerAdapter<TokenLoginCoreHiveModel>(TokenLoginCoreHiveModelAdapter());
}
