import 'package:cosmos_sdk/src/provider/thornode/core/core.dart';
import 'package:cosmos_sdk/src/provider/thornode/core/thorenode.dart';

/// Returns the scheduled queue.
class ThorNodeRequestQueueScheduled extends ThorNodeRequestParam<
    List<Map<String, dynamic>>, List<Map<String, dynamic>>> {
  ThorNodeRequestQueueScheduled({this.height});

  /// optional block height, defaults to current tip
  final BigInt? height;
  @override
  String get method => ThorNodeMethods.scheduled.url;

  @override
  List<String> get pathParameters => [];

  @override
  Map<String, String?> get parameters => {"height": height?.toString()};
}
