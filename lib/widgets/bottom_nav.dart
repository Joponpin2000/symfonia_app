import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function handleClick;
  final int activeIndex;
  const BottomBar(
      {Key? key, required this.handleClick, required this.activeIndex})
      : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bar_chart,
            color: widget.activeIndex == 0
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.language,
            color: widget.activeIndex == 1
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
                color: widget.activeIndex == 2
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
            color: widget.activeIndex == 3
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
            size: 30,
          ),
          label: "",
        ),
      ],
      onTap: (index) => widget.handleClick(index),
      backgroundColor: Colors.white,
    );
  }
}
