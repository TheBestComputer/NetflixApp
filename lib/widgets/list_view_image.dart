import 'package:flutter/material.dart';

class ListViewImage extends StatefulWidget {
  const ListViewImage({super.key});

  @override
  State<ListViewImage> createState() => _ListViewImageState();
}

class _ListViewImageState extends State<ListViewImage> {
  final List<String> imageName = [
    'resim1',
    'resim2',
    'resim3',
    'resim2',
    'resim1',
    'resim3',
    'resim1',
    'resim2',
    'resim3',
    'resim2',
    'resim1',
    'resim3',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Mobile Games',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'My List',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: imageName.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/png/${imageName[index]}.png',
                        width: 150,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
