import 'package:flutter/material.dart';

class SegmentedDropdownMenu extends StatefulWidget {
  const SegmentedDropdownMenu({super.key});

  @override
  State<SegmentedDropdownMenu> createState() => _SegmentedDropdownMenuState();
}

class _SegmentedDropdownMenuState extends State<SegmentedDropdownMenu> {
  String? _categoryValue;
  String? _countryValue;
  String? _languageValue;

  List<String> _categories = ['Latest', 'Local News', 'International News'];
  List<String> _countries = ['Bangladesh', 'United States', 'Canada'];
  List<String> _languages = ['Bangla', 'English', 'Canada'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF363636),
              ),
              padding: const EdgeInsets.only(left: 8),
              child: DropdownButton(
                underline: Container(
                  color: Colors.transparent,
                ),
                hint: Text(
                  "Categories",
                  style: TextStyle(color: Colors.white),
                ),
                value: _categoryValue,
                items: _categories.map((category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _categoryValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF363636),
              ),
              padding: const EdgeInsets.only(left: 8),
              child: DropdownButton(
                underline: Container(
                  color: Colors.transparent,
                ),
                hint: Text(
                  "Countries",
                  style: TextStyle(color: Colors.white),
                ),
                value: _countryValue,
                items: _countries.map((country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _countryValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF363636),
              ),
              padding: const EdgeInsets.only(left: 8),
              child: DropdownButton(
                underline: Container(
                  color: Colors.transparent,
                ),
                hint: Text(
                  "Languages",
                  style: TextStyle(color: Colors.white),
                ),
                value: _languageValue,
                items: _languages.map((language) {
                  return DropdownMenuItem<String>(
                    value: language,
                    child: Text(language),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _languageValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
