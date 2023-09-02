import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../all/routes/app_router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MapRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.map)),
            BottomNavigationBarItem(label: 'Posts', icon: Icon(Icons.person)),
          ],
        );
      },
    );
  }
}