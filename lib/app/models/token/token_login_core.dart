
import 'package:hive/hive.dart';
part 'token_login_core.g.dart';


@HiveType(typeId: 0)
class TokenLoginCoreHiveModel extends HiveObject {
  @HiveField(0)
  final String accessToken;
  @HiveField(1)
  final String refreshToken;
  @HiveField(2)
  final String dateEx;
  TokenLoginCoreHiveModel({
    required this.accessToken,
    required this.refreshToken,
    required this.dateEx,
  });
}
