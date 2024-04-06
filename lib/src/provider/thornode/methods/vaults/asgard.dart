import 'package:cosmos_sdk/src/provider/thornode/core/core.dart';
import 'package:cosmos_sdk/src/provider/thornode/core/thorenode.dart';
import 'package:cosmos_sdk/src/provider/thornode/models/models/vault_info.dart';

/// Returns current asgard vaults.
class ThorNodeRequestCurrentAsgardVaults extends ThorNodeRequestParam<
    List<ThorVaultInfoResponse>, List<Map<String, dynamic>>> {
  ThorNodeRequestCurrentAsgardVaults({this.height});

  /// optional block height, defaults to current tip
  final BigInt? height;
  @override
  String get method => ThorNodeMethods.asgard.url;

  @override
  List<String> get pathParameters => [];

  @override
  Map<String, String?> get parameters => {"height": height?.toString()};
  @override
  List<ThorVaultInfoResponse> onResonse(List<Map<String, dynamic>> result) {
    return result.map((e) => ThorVaultInfoResponse.fromJson(e)).toList();
  }
}
