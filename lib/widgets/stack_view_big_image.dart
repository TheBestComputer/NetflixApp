import 'package:flutter/material.dart';

class StackViewBigImage extends StatefulWidget {
  const StackViewBigImage({super.key});

  @override
  State<StackViewBigImage> createState() => _StackViewBigImageState();
}

class _StackViewBigImageState extends State<StackViewBigImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
              height: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/png/resim1.png'),
                      fit: BoxFit.cover))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Center(
            child: Text(
              'Udda • Fyndig • Mörk komedi',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 490),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 60, vertical: 8)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      size: 25,
                      color: Colors.black,
                    ),
                    Text(
                      'Play',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 45, vertical: 8)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.grey),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.add,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      'My List',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
