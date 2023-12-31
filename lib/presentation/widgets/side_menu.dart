import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;
  
  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).padding.top > 35;
    
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
        //context.go(menuItem.link);
        widget.scaffoldKey.currentState!.closeDrawer();

      },
      children: [

        Padding(
          padding: EdgeInsets.only(
            top: hasNotch ? 0 : 20,
            bottom: 20,
            left: 10,
            right: 16,
          ),
          child: Text('Main'),
        ),

        ...appMenuItems
        .sublist(0,3)
        .map((item) => NavigationDrawerDestination(
          icon: Icon(item.icon),
          label: Text(item.title),
        )).toList(),

        Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Divider(),
        ),

        ...appMenuItems
        .sublist(3)
        .map((item) => NavigationDrawerDestination(
          icon: Icon(item.icon),
          label: Text(item.title),
        )).toList(),

        // NavigationDrawerDestination(
        //   icon: Icon(Icons.home),
        //   label: Text('Home'),
        // ),
        // NavigationDrawerDestination(
        //   icon: Icon(Icons.message),
        //   label: Text('Messages'),
        // ),
      ],
    );
  }
}