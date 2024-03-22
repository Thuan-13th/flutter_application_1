import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'Models/read_local_data.dart';
import 'Page/home_page.dart';
import 'controller/stepper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  readLocationData.loadLocationData();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => stepperController),
    ],
    child: const HomePage(),
  ));
}
