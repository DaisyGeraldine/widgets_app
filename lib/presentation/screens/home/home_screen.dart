import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static String name = 'Home.screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const Center(
        child: _HomeView(),
      ),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(  context).colorScheme;

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {

  const _CustomListTitle({
    super.key, 
    required this.menuItem
  });
  final MenuItem menuItem;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(  context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon),
      trailing: Icon(Icons.keyboard_arrow_right, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ButtonsScreen(),
            //   ),
            // );
        //Navigator.pushNamed(context, menuItem.link,);
        context.push(menuItem.link);
      },
    );
  }
}