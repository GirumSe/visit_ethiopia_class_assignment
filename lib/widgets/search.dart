import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:visit_ethiopia/models/hotspot_model.dart';
import 'package:visit_ethiopia/services/database.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  GlobalKey<AutoCompleteTextFieldState<TouristHotspot>> key = GlobalKey();
  AutoCompleteTextField<TouristHotspot>? textField;
  TextEditingController controller = TextEditingController();
  List<TouristHotspot> hotspots = [];

  @override
  void initState() {
    super.initState();
    loadHotspots();
  }

  Future<void> loadHotspots() async {
    hotspots = await HotspotDao.getAllHotspots();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    textField = AutoCompleteTextField<TouristHotspot>(
      key: key,
      controller: controller,
      clearOnSubmit: false,
      suggestions: hotspots,
      style: const TextStyle(color: Colors.black, fontSize: 16.0),
      decoration: const InputDecoration(
        hintText: 'Search for hotspots',
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      ),
      itemFilter: (item, query) {
        return item.name.toLowerCase().startsWith(query.toLowerCase());
      },
      itemSorter: (a, b) {
        return a.name.compareTo(b.name);
      },
      itemSubmitted: (item) {
        // Handle the selected hotspot
        print('Selected hotspot: ${item.name}');
      },
      itemBuilder: (context, item) {
        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.category),
        );
      },
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          textField!,
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Perform a search based on the entered text
              String searchText = controller.text.trim();
              if (searchText.isNotEmpty) {
                List<TouristHotspot> searchResults =
                    HotspotDao.searchHotspotsByName(searchText)
                        as List<TouristHotspot>;
                // Handle the search results
                print('Search results: $searchResults');
              }
            },
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }
}
