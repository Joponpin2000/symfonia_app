import 'package:flutter/material.dart';
import '/views/dashboard/history.dart';
import '/views/dashboard/browse.dart';
import '/views/dashboard/notifications.dart';
import '/views/dashboard/account.dart';
import '/widgets/bottom_nav.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int activeTabIndex = 0;

  static const pages = [
    History(),
    Browse(),
    Notifications(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activeTabIndex],
      bottomNavigationBar: BottomBar(
        activeIndex: activeTabIndex,
        handleClick: (index) => setState(
          () {
            activeTabIndex = index;
          },
        ),
      ),
    );
  }
}
