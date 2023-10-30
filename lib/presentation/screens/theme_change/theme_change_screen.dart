import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';



class ThemeChangeScreen extends ConsumerWidget {

  static const name = "Theme Change Screen";
  
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final isDarkmode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Riverpod'),
        actions: [
          IconButton(
            onPressed: () {
              //ref.read(counterProvider.notifier).reset();
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            },
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined)
          ),
        ],
      ),
      body: _ThemeChangeView(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(counterProvider.notifier).state++;
          //ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ThemeChangeView extends ConsumerWidget {
  const _ThemeChangeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text('Este color',
            style: TextStyle(
              color: color,
            ),
          ),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedColorProvider.notifier).state = index;
          },
          
        );
      },
    );
  }
}