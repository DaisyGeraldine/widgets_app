import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {

  static String name = 'Infinite.Scroll.screen';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Infinite Scroll Screen'),
      // ),
      // body: ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text('Item $index'),
      //       subtitle: Text('Subtitle $index'),
      //       leading: CircleAvatar(
      //         child: Text('$index'),
      //       ),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     );
      //   },
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300/?image=$index'),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios),
      ),

    );
  }
}