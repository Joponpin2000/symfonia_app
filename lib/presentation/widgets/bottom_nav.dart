import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/constants/nav_bar_items.dart';
import '/cubit/navigation_cubit.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final currentIndex = (state as NavigationInitial).index;
        return BottomNavigationBar(
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
                color: currentIndex == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.language,
                color: currentIndex == 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary,
              ),
              label: "Browse",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(
                    Icons.notifications_none,
                    color: currentIndex == 2
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        child: const Text(
                          "13",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: currentIndex == 3
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary,
              ),
              label: "Account",
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              BlocProvider.of<NavigationCubit>(context)
                  .getNavBarItem(NavbarItem.history);
            } else if (index == 1) {
              BlocProvider.of<NavigationCubit>(context)
                  .getNavBarItem(NavbarItem.browse);
            } else if (index == 2) {
              BlocProvider.of<NavigationCubit>(context)
                  .getNavBarItem(NavbarItem.notifications);
            } else if (index == 3) {
              BlocProvider.of<NavigationCubit>(context)
                  .getNavBarItem(NavbarItem.account);
            }
          },
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
        );
      },
    );
  }
}
