import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo> [
  SlideInfo(
    title: 'Welcome to my App',
    caption: 'This is a caption',
    imageUrl: 'assets/images/1.png',
  ),
  SlideInfo(
    title: 'Welcome to my App',
    caption: 'This is a caption',
    imageUrl: 'assets/images/2.png',
  ),
  SlideInfo(
    title: 'Welcome to my App',
    caption: 'This is a caption',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {

  static String name = 'AppTutorial.screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }

      //print('${pageViewController.page}');
    });
  }

  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Tutorial Screen'),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slide) => _Slide(
              title: slide.title,
              caption: slide.caption,
              imageUrl: slide.imageUrl,
            )).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: Text('Salir'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),

          endReached ?
            Positioned(
              bottom: 20,
              right: 20,
              child: FadeInRight(
                from: 15,
                delay: Duration(seconds: 1),
                duration: const Duration(milliseconds: 500),
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Comenzar'),
              
                ),
              ), 
            
            ): SizedBox(
              height: 0,
            ),

        ],
      ),
    );
  }
}
class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    super.key, 
    required this.title, 
    required this.caption, 
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyLarge;

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}