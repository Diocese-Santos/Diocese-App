import 'dart:math';

int anyInt() => Random().nextInt(1_000_000);
String anyString() => anyInt().toString();
bool anyBool() => Random().nextBool();
DateTime anyDateTime() => DateTime.fromMillisecondsSinceEpoch(anyInt());
String anyIsoDate() => anyDateTime().toIso8601String();