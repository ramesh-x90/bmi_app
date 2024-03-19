import 'package:device_info_plus/device_info_plus.dart';

Future<String> getDeviceUserName() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
  return iosDeviceInfo.name;
}
