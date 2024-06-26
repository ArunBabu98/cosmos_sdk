import 'package:cosmos_sdk/src/models/networks/osmosis/osmosis_poolincentives_v1beta1/types/types.dart';
import 'package:cosmos_sdk/src/protobuf/protobuf.dart';
import 'package:cosmos_sdk/src/utils/quick_extensions.dart';

class OsmosisPoolincentivesLockableDurationsInfo extends CosmosMessage {
  final List<ProtobufDuration> lockableDurations;
  OsmosisPoolincentivesLockableDurationsInfo(
      List<ProtobufDuration> lockableDurations)
      : lockableDurations = lockableDurations.mutable;
  factory OsmosisPoolincentivesLockableDurationsInfo.deserialize(
      List<int> bytes) {
    final decode = CosmosProtocolBuffer.decode(bytes);
    return OsmosisPoolincentivesLockableDurationsInfo(decode
        .getFields(1)
        .map((e) => ProtobufDuration.deserialize(e))
        .toList());
  }

  @override
  List<int> get fieldIds => [1];

  @override
  Map<String, dynamic> toJson() {
    return {
      "lockable_durations": lockableDurations.map((e) => e.toJson()).toList()
    };
  }

  @override
  String get typeUrl =>
      OsmosisPoolincentivesV1beta1Types.lockableDurationsInfo.typeUrl;
  @override
  List get values => [lockableDurations];
}
