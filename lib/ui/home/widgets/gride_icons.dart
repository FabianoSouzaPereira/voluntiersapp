import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voluntiersapp/ui/home/widgets/grid_icon.dart';

class IconsGrid extends StatelessWidget {
  final List<CustomIcon> icons;
  final String? title;
  final String? description;

  const IconsGrid({
    Key? key,
    required this.icons,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Younity Tarefas',
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Color.fromRGBO(88, 88, 83, 1),
                offset: Offset(1.2, 4.2),
                blurRadius: 3.0,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).go(icons[index].route);
            },
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.white, Colors.grey],
                      stops: [0.0, 1.0],
                    ).createShader(bounds);
                  },
                  child: Icon(
                    icons[index].iconData,
                    size: 60,
                    color: icons.elementAt(index).iconColor,
                    shadows: const [
                      Shadow(
                        color: Color.fromRGBO(88, 88, 83, 1),
                        offset: Offset(1.2, 4.2),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
