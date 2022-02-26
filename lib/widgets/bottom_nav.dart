import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function handleClick;
  const BottomBar({Key? key, required this.handleClick}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: "History",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.language), label: "Browse"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none), label: "Notifications"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "Account"),
      ],
      onTap: (index) => widget.handleClick(index),
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).accentColor,
    );
  }
}
