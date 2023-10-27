
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subtitle,
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Buttons',
    subtitle: 'Buttons page',
    link: '/buttons',
    icon: Icons.ac_unit,
  ),

  MenuItem(
    title: 'Cards',
    subtitle: 'Cards page',
    link: '/cards',
    icon: Icons.access_alarm,
  ),

  MenuItem(
    title: 'Animated',
    subtitle: 'Animated page',
    link: '/animated',
    icon: Icons.accessibility,
  ),

  MenuItem(
    title: 'Infinite Scroll',
    subtitle: 'Infinite Scroll page',
    link: '/infinite_scroll',
    icon: Icons.account_balance,
  ),

  MenuItem(
    title: 'Progress',
    subtitle: 'Progress page',
    link: '/progress',
    icon: Icons.account_balance_wallet,
  ),

  MenuItem(
    title: 'Snackbar',
    subtitle: 'Snackbar page',
    link: '/snackbar',
    icon: Icons.account_box,
  ),

  MenuItem(
    title: 'UI Controls',
    subtitle: 'UI Controls page',
    link: '/ui_controls',
    icon: Icons.account_circle,
  ),
  MenuItem(
    title: 'Introduction to app',
    subtitle: 'Tutorial introduction',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),


  
  // MenuItem(
  //   title: 'Home',
  //   subtitle: 'Home page',
  //   link: '/',
  //   icon: Icons.home,
  // ),
  // MenuItem(
  //   title: 'About',
  //   subtitle: 'About page',
  //   link: '/about',
  //   icon: Icons.info,
  // ),
  // MenuItem(
  //   title: 'Contact',
  //   subtitle: 'Contact page',
  //   link: '/contact',
  //   icon: Icons.contact_page,
  // ),
  // MenuItem(
  //   title: 'Settings',
  //   subtitle: 'Settings page',
  //   link: '/settings',
  //   icon: Icons.settings,
  // ),
];
