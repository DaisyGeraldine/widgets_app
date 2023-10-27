
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
    title: 'Home',
    subtitle: 'Home page',
    link: '/',
    icon: Icons.home,
  ),
  MenuItem(
    title: 'About',
    subtitle: 'About page',
    link: '/about',
    icon: Icons.info,
  ),
  MenuItem(
    title: 'Contact',
    subtitle: 'Contact page',
    link: '/contact',
    icon: Icons.contact_page,
  ),
  MenuItem(
    title: 'Settings',
    subtitle: 'Settings page',
    link: '/settings',
    icon: Icons.settings,
  ),
];
