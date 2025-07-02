import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermission() async {
  var status = await Permission.storage.status;
  if (!status.isGranted) {
  status =  await Permission.storage.request();
  }
  if(status.isDenied){
    status =  await Permission.storage.request();
  }
  else if(status.isPermanentlyDenied){
    status =  await Permission.storage.request();
    await openAppSettings();
  }
}