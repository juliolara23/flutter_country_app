import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:release_app/controllers/country_controller.dart';
import 'package:release_app/model/country.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPage();
}

class _CountryPage extends State<CountryPage> {
  final CountryController _countryController = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Autocomplete<Country>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          return _countryController.countries
              .where((Country continent) => continent.countryName
                  .toLowerCase()
                  .startsWith(textEditingValue.text.toLowerCase()))
              .toList();
        },
        displayStringForOption: (Country option) => option.countryName,
        fieldViewBuilder: (BuildContext context,
            TextEditingController fieldTextEditingController,
            FocusNode fieldFocusNode,
            VoidCallback onFieldSubmitted) {
          return TextField(
            controller: fieldTextEditingController,
            focusNode: fieldFocusNode,
            style: const TextStyle(fontWeight: FontWeight.bold),
          );
        },
        onSelected: (Country selection) {
          print('Selected: ${selection.countryName}');
        },
        optionsViewBuilder: (BuildContext context,
            AutocompleteOnSelected<Country> onSelected,
            Iterable<Country> options) {
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              child: Container(
                width: 300,
                color: Colors.teal,
                child: ListView.builder(
                  padding: const EdgeInsets.all(10.0),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Country option = options.elementAt(index);

                    return GestureDetector(
                      onTap: () {
                        onSelected(option);
                      },
                      child: ListTile(
                        title: Text(option.countryName,
                            style: const TextStyle(color: Colors.white)),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
