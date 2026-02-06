part of 'page_background.dart';

class SimpleBackground extends StatelessWidget {
  const SimpleBackground();

  @override
  Widget build(BuildContext context) => const DecoratedBox(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFFFFFFF), Color(0xFFD9D9FF)],
      ),
    ),
    child: Center(),
  );
}
