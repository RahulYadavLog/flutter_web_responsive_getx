import 'package:fincare1/HomePae.dart';
import 'package:fincare1/RM/product_screen.dart';
import 'package:fincare1/RM/view/rm_dashboard.dart';
import 'package:fincare1/RM/view/user_class.dart';
import 'package:fincare1/desktop/responsive_desktop.dart';
import 'package:fincare1/expand_list.dart';
import 'package:fincare1/first_page.dart';
import 'package:fincare1/routes/AppRoutes.dart';
import 'package:fincare1/second_page.dart';
import 'package:fincare1/third_page.dart';
import 'package:fincare1/todo/add_data.dart';
import 'package:fincare1/todo/todo_screen.dart';
import 'package:fincare1/ui/dashboard_layout.dart';
import 'package:fincare1/ui/fourth_page.dart';
import 'package:fincare1/widgets/edit_text.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../desktop/desktop_screen.dart';
import '../helper/init_depen.dart';
import '../widgets/WidgetPractice.dart';

class Routes {

  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<MyHomePage>(
      name: AppRoutes.START,
      page: () => MyHomePage(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),

    GetPage<FirstPage>(
      name: AppRoutes.FIRST,
      page: () => const FirstPage(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<SecondPage>(
      name: AppRoutes.SECOND,
      page: () => const SecondPage(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<ThirdPage>(
      name: AppRoutes.THIRD,
      page: () => const ThirdPage(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<FourthPage>(
      name: AppRoutes.FOURTH,
      page: () => FourthPage(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),

    GetPage<DashboardLayout>(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardLayout(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<WidgetPractice>(
      name: AppRoutes.WidgetPractice,
      page: () => const WidgetPractice(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<EditText>(
      name: AppRoutes.EDITTEXT,
      page: () => const EditText(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<TODOScreen>(
      name: AppRoutes.TODOLIST,
      page: () => const TODOScreen(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<AddTODO>(
      name: AppRoutes.ADDTODO,
      page: () => const AddTODO(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<DesktopScreen>(
      name: AppRoutes.DESKTOP,
      page: () => const DesktopScreen(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<ResponsiveDesktopScreen>(
      name: AppRoutes.RESDESKTOP,
      page: () => const ResponsiveDesktopScreen(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),

    GetPage<RMDashboard>(
      name: AppRoutes.RMDASHBOARD,
      page: () => const RMDashboard(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<ExpendsList>(
      name: AppRoutes.EXPENDLIST,
      page: () => const ExpendsList(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
    GetPage<UserClassScreen>(
      name: AppRoutes.USERCLASS,
      page: () => const UserClassScreen(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),
 GetPage<ProductScreen>(
      name: AppRoutes.PRODUCT,
      page: () => ProductScreen(),
      binding: InitDependency(),
      preventDuplicates: true,
    ),

  ];
}
  // static const INITIAL = AppRoutes.START;
  //
  // static final routes = [
  //   GetPage(
  //     name: AppRoutes.FIRST,
  //     page: () => FirstPage(),
  //     binding: InitDependency(),
  //   ),
  //   GetPage(
  //     name: AppRoutes.SECOND,
  //     page: () => SecondPage(),
  //     binding: InitDependency(),
  //   ),
  //   GetPage(
  //     name: AppRoutes.THIRD,
  //     page: () => ThirdPage(),
  //     binding: InitDependency(),
  //
  //   ),
  //   GetPage(
  //     name: AppRoutes.START,
  //     page: () => MyHomePage(),
  //     binding: InitDependency(),
  //   ),
  // ];

