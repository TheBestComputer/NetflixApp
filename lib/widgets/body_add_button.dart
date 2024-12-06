import 'package:flutter/material.dart';

class BodyAddButton extends StatefulWidget {
  const BodyAddButton({super.key});

  @override
  State<BodyAddButton> createState() => _BodyAddButtonState();
}

class _BodyAddButtonState extends State<BodyAddButton> {
  List<String> arrayTitleNames = [
    'Available for Download',
    '2024 Netflix Oscars',
    'Action',
    'Anime',
    'Classics',
    'Comedies',
    'Crime',
    'Critics’ Picks',
    'Documentaries',
    'Dramas',
    'European Films',
    'Family Cozy Time'
  ];
  bool _isButtonPressed = false;
  List<String> selectedCategories = [];

  void showCategoryList() {
    setState(() {
      _isButtonPressed = true;
    });

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return _ListViewWidgetAdd(
          arrayTitleNames: arrayTitleNames,
          onItemSelected: (selectedItem) {
            setState(() {
              if (!selectedCategories.contains(selectedItem)) {
                selectedCategories.add(selectedItem);
              }
            });
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        ElevatedButton(
          onPressed: showCategoryList,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Categories'),
              Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
            ],
          ),
        ),
        Row(children: selectedCategories
            .map((category) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text(category),
            deleteIcon: const Icon(Icons.close),
            onDeleted: () {
              setState(() {
                selectedCategories.remove(category);
              });
            },
          ),
        )).toList(),),
      ],
    );
  }
}

class _ListViewWidgetAdd extends StatelessWidget {
  const _ListViewWidgetAdd({
    super.key,
    required this.arrayTitleNames,
    required this.onItemSelected,
  });

  final List<String> arrayTitleNames;
  final Function(String) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ElevatedButton(
          onPressed: () {
            onItemSelected(arrayTitleNames[index]);
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(arrayTitleNames[index]),
        );
      },
      itemCount: arrayTitleNames.length,
    );
  }
}