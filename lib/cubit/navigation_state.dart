part of 'navigation_cubit.dart';

@immutable
abstract class NavigationState {}

class NavigationInitial extends NavigationState {
  final NavbarItem navbarItem;
  final int index;

  NavigationInitial(this.navbarItem, this.index);

  List<Object> get props => [navbarItem, index];
}
