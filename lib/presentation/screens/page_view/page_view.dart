import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidesInfo {
  final String title;
  final String description;
  final String image;

  const SlidesInfo({
    required this.title,
    required this.description,
    required this.image,
  });
}

final slides = [
  const SlidesInfo(
    title: 'Busca la comida',
    description: 'Busca la comida que más te guste y disfruta de ella en casa',
    image: 'assets/images/1.png',
  ),
  const SlidesInfo(
    title: 'Elige tu comida',
    description:
        'Elige tu comida favorita del menú de tu restaurante favorito, y pídela',
    image: 'assets/images/2.png',
  ),
  const SlidesInfo(
    title: 'Y disfruta',
    description: 'Y disfruta de tu comida en casa, con tus amigos o familiares',
    image: 'assets/images/3.png',
  ),
];

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  static const name = '/page-view';

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      final page = pageController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() => endReached = true);
      } else if (endReached && page <= (slides.length - 1.5)) {
        setState(() => endReached = false);
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map(
                  (e) => _SlidesInfo(
                    title: e.title,
                    description: e.description,
                    image: e.image,
                  ),
                )
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Salir'),
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    duration: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Comenzar'),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _SlidesInfo extends StatelessWidget {
  const _SlidesInfo({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
