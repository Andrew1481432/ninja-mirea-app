import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:rtu_mirea_app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:rtu_mirea_app/presentation/pages/news/news_details_page.dart';
import 'package:rtu_mirea_app/presentation/pages/news/news_page.dart';

import '../pages/home/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: NewsDetailsPage, path: 'news-details'),
    AutoRoute(
      page: HomePage,
      initial: true,
      path: '/',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          name: 'NewsRouter',
          path: 'news',
          children: [
            AutoRoute(page: NewsPage, path: ''),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'DashboardRouter',
          path: 'dashboard',
          children: [
            AutoRoute(page: DashboardPage, path: ''),
          ],
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
