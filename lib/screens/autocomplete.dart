import 'package:flutter/material.dart';

class AutoCompleteScreen extends StatefulWidget {
  const AutoCompleteScreen({super.key});

  @override
  State<AutoCompleteScreen> createState() => _AutoCompleteScreenState();
}

class _AutoCompleteScreenState extends State<AutoCompleteScreen> {
  static const List<String> listItems = <String>['apple', 'banana', 'melon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AutoComplete'),
      ),
      body: Autocomplete<String>(
        optionsBuilder: (textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return listItems.where((element) =>
              element.contains(textEditingValue.text.toLowerCase()));
        },
        onSelected: (option) {
          print('The $option is selected');
        },
        
      ),
    );
  }
}
