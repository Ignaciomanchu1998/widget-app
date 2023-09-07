import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevated 0'},
  {'elevation': 1.0, 'label': 'Elevated 1'},
  {'elevation': 2.0, 'label': 'Elevated 2'},
  {'elevation': 3.0, 'label': 'Elevated 3'},
  {'elevation': 4.0, 'label': 'Elevated 4'},
  {'elevation': 5.0, 'label': 'Elevated 5'}
];

class CardScreen extends StatelessWidget {
  static const String name = 'card_screen';
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card screen'),
      ),
      body: const _CardView(),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CardItem1(
              elevation: card["elevation"],
              label: card["label"],
            ),
          ),
          ...cards.map(
            (card) => _CardItem2(
              elevation: card["elevation"],
              label: card["label"],
            ),
          ),
          ...cards.map(
            (card) => _CardItem3(
              elevation: card["elevation"],
              label: card["label"],
            ),
          ),
          ...cards.map(
            (card) => _CardItem4(
              elevation: card["elevation"],
              label: card["label"],
            ),
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}

class _CardItem1 extends StatelessWidget {
  const _CardItem1({
    required this.label,
    required this.elevation,
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
                icon: const Icon(Icons.more_vert),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}

class _CardItem2 extends StatelessWidget {
  const _CardItem2({
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: colors.outline,
        ),
        borderRadius: BorderRadius.circular(10.0),
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
                icon: const Icon(Icons.more_vert),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Card $label - outline"),
            )
          ],
        ),
      ),
    );
  }
}

class _CardItem3 extends StatelessWidget {
  const _CardItem3({
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}

class _CardItem4 extends StatelessWidget {
  const _CardItem4({
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          // Todo: add image
          Image.network(
            'https://picsum.photos/id/0/600/250',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
