import 'package:fincare1/HomePae.dart';
import 'package:fincare1/helper/init_depen.dart';
import 'package:fincare1/routes/AppRoutes.dart';
import 'package:fincare1/routes/routes.dart';
import 'package:fincare1/ui/dashboard_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'RM/view/main_drawer_page.dart';
import 'helper/init_controller.dart' as di;

Future<void> main() async {
  setPathUrlStrategy();
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitDependency(),
      title: 'Flutter Demo',
      initialRoute: AppRoutes.START,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      getPages: [GetPage(name: "/:page_name", page: () => DashboardLayout())],
    );
  }
}

