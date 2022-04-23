part of 'my_tabbar.dart';

class MyActiveTabIndicator extends StatelessWidget {
  final String title;
  const MyActiveTabIndicator({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      height: 20,
      curve: Curves.easeInBack,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          )),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
