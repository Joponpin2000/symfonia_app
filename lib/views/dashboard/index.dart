import 'package:flutter/material.dart';
import '/views/dashboard/account.dart';
import '/views/dashboard/browse.dart';
import '/views/dashboard/history.dart';
import '/views/dashboard/notifications.dart';
import '/widgets/bottom_nav.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int tabIndex = 0;

  var pages = [
    const History(),
    const Browse(),
    const Notifications(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[tabIndex],
      bottomNavigationBar: BottomBar(
        handleClick: (index) => setState(
          () {
            tabIndex = index;
          },
        ),
      ),
    );
  }
}
