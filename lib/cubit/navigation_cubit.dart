import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '/constants/nav_bar_items.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial(NavbarItem.history, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.history:
        emit(NavigationInitial(NavbarItem.history, 0));
        break;
      case NavbarItem.browse:
        emit(NavigationInitial(NavbarItem.browse, 1));
        break;
      case NavbarItem.notifications:
        emit(NavigationInitial(NavbarItem.notifications, 2));
        break;
      case NavbarItem.account:
        emit(NavigationInitial(NavbarItem.account, 3));
        break;
    }
  }
}
