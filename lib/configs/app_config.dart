import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:lokapos/services/http_service.dart';
import 'package:lokapos/services/navigation_service.dart';

import '../firebase_options.dart';


GetIt locator = GetIt.instance;

void _setLocator() {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
}


class AppConfig {

  void runConfig() async {
    await HttpService().init();

    _setLocator();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
