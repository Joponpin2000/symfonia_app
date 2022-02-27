import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/presentation/screens/account_screen.dart';
import '/presentation/screens/browse_screen.dart';
import '/presentation/screens/history_screen.dart';
import '/presentation/screens/notifications_screen.dart';
import '/constants/nav_bar_items.dart';
import '/cubit/navigation_cubit.dart';
import '/presentation/widgets/bottom_nav.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        state = (state as NavigationInitial);
        if (state.navbarItem == NavbarItem.history) {
          return const HistoryScreen();
        } else if (state.navbarItem == NavbarItem.browse) {
          return const BrowseScreen();
        } else if (state.navbarItem == NavbarItem.notifications) {
          return const NotificationsScreen();
        } else if (state.navbarItem == NavbarItem.account) {
          return const AccountScreen();
        }
        return Container();
      }),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
