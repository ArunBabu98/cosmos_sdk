import 'package:cosmos_sdk/src/models/networks/osmosis/osmosis_poolincentives_v1beta1/types/types.dart';
import 'package:cosmos_sdk/src/protobuf/protobuf.dart';
import 'package:cosmos_sdk/src/utils/quick_extensions.dart';

import 'pool_to_gauge.dart';

class OsmosisPoolincentivesPoolToGauges extends CosmosMessage {
  final List<OsmosisPoolincentivesPoolToGauge> poolToGauge;
  OsmosisPoolincentivesPoolToGauges(
      List<OsmosisPoolincentivesPoolToGauge> poolToGauge)
      : poolToGauge = poolToGauge.mutable;
  factory OsmosisPoolincentivesPoolToGauges.deserialize(List<int> bytes) {
    final decode = CosmosProtocolBuffer.decode(bytes);
    return OsmosisPoolincentivesPoolToGauges(decode
        .getFields(2)
        .map((e) => OsmosisPoolincentivesPoolToGauge.deserialize(e))
        .toList());
  }

  @override
  List<int> get fieldIds => [2];

  @override
  Map<String, dynamic> toJson() {
    return {"pool_to_gauge": poolToGauge.map((e) => e.toJson()).toList()};
  }

  @override
  String get typeUrl => OsmosisPoolincentivesV1beta1Types.poolToGauges.typeUrl;
  @override
  List get values => [poolToGauge];
}
