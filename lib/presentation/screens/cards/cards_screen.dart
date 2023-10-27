import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>> [
  { 'elevation': 0.0, 'label': 'Elevation 0'},
  { 'elevation': 1.0, 'label': 'Elevation 1'},
  { 'elevation': 2.0, 'label': 'Elevation 2'},
  { 'elevation': 3.0, 'label': 'Elevation 3'},
  { 'elevation': 4.0, 'label': 'Elevation 4'},
  { 'elevation': 5.0, 'label': 'Elevation 5'},
  
  ];


class CardsScreen extends StatelessWidget {

  static String name = "CardsScreen";

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: _CardsScreen(),
    );
  }
}

class _CardsScreen extends StatelessWidget {
  const _CardsScreen({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        children: [
         ...cards.map(
            (card) => _CardTypes(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          ...cards.map(
            (card) => _CardTypes2(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),

          ...cards.map(
            (card) => _CardTypes3(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),

          ...cards.map(
            (card) => _CardTypes4(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
    
        ],
      ),
    );
  }
}

class _CardTypes extends StatelessWidget {
  const _CardTypes({
    super.key, 
    required this.label, 
    required this.elevation
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardTypes2 extends StatelessWidget {
  const _CardTypes2({
    super.key, 
    required this.label, 
    required this.elevation
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardTypes3 extends StatelessWidget {
  const _CardTypes3({
    super.key, 
    required this.label, 
    required this.elevation
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.primary,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardTypes4 extends StatelessWidget {
  const _CardTypes4({
    super.key, 
    required this.label, 
    required this.elevation
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge, //evitar que lo hijos salgan del contenido de su padre
      elevation: elevation,
      child: Stack(
        children: [

          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),
          ),

        ],
      ),
    );
  }
}