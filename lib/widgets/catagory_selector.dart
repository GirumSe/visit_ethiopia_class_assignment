import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  // Define the currently selected category (e.g., "Historical" is the default).
  String selectedCategory = 'Historical';

  // Function to update the selected category and trigger a UI rebuild.
  void changeCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 33,
      top: 294,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCategoryButton('Historical'),
          const SizedBox(width: 18),
          buildCategoryButton('Most Visited'),
          const SizedBox(width: 18),
          buildCategoryButton('Popular'),
          const SizedBox(width: 18),
          buildCategoryButton('Cities'),
        ],
      ),
    );
  }

  Widget buildCategoryButton(String category) {
    final bool isSelected = category == selectedCategory;
    return GestureDetector(
      onTap: () => changeCategory(category),
      child: Text(
        category,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.black.withOpacity(0.5),
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
