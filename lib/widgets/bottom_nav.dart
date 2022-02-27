import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Function handleClick;
  final int activeIndex;
  const BottomBar(
      {Key? key, required this.handleClick, required this.activeIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bar_chart,
            color: activeIndex == 0
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.language,
            color: activeIndex == 1
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(
                Icons.notifications_none,
                color: activeIndex == 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).accentColor,
                size: 30,
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
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: activeIndex == 3
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            size: 30,
          ),
          label: "",
        ),
      ],
      onTap: (index) => handleClick(index),
      backgroundColor: Colors.white,
    );
  }
}
