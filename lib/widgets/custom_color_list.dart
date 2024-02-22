import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.selected, required this.color});
  final bool selected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return selected
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffefbdeb),
    Color(0xffb68cb8),
    Color(0xff6461a0),
    Color(0xff314cb6),
    Color(0xff0a81d1),
    Color(0xfff7c59f),
    Color(0xff2a324b),
    Color(0xff767b91),
    Color(0xffc7ccdb),
    Color(0xffe1e5ee),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    selected: currentIndex == index,
                    color: colors[index],
                  )),
            );
          }),
    );
  }
}
