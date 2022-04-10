import 'package:portfolio_website/core/helpers/layout_helper.dart';
import 'package:portfolio_website/core/models/drawer_items.dart';

List<DrawerItemModel> drawerItems = <DrawerItemModel>[
  DrawerItemModel(
    label: 'Home',
    screen: Screen.home,
  ),
  DrawerItemModel(
    label: 'About',
    screen: Screen.about,
  ),
  DrawerItemModel(
    label: 'Projects',
    screen: Screen.projects,
  ),
  DrawerItemModel(
    label: 'Contact',
    screen: Screen.contact,
  ),
];
