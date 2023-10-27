import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  static String name = 'Buttons.screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {}, 
              child: Text('Elevated Button'),
            ),
            ElevatedButton.icon(
              onPressed: null, 
              icon: Icon(Icons.add),
              label: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.add),
              label: Text('Elevated Icon'),
            ),

            FilledButton(
              onPressed: () {}, 
              child: Text('Filled Button'),
            ),
            FilledButton.icon(
              onPressed: () {},  
              icon: Icon(Icons.add),
              label: Text('Filled Disabled'),
            ),

            OutlinedButton(
              onPressed: () {}, 
              child: Text('Outlined Button'),
            ),
            OutlinedButton.icon(
              onPressed: () {},  
              icon: Icon(Icons.add),
              label: Text('Outlined Disabled'),
            ),

            TextButton(
              onPressed: () {}, 
              child: Text('Text Button'),
            ),
            TextButton.icon(
              onPressed: () {},  
              icon: Icon(Icons.add),
              label: Text('Text Disabled'),
            ),

            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: MaterialStatePropertyAll(Colors.white),
              ),
            ),

            CustomButtom(),

          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Material(
        color: Colors.green,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),
            ),
        ),
      ),
    );
  }
}