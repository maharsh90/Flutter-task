import 'package:flutter/material.dart';
import 'package:march4task/widget/appbar.dart';
import 'package:march4task/widget/common_button.dart';

List<String> listOfDropDownValues = [
  "product 1",
  "product 2",
  "product 3",
  "product 4"
];

class AllFieldsPage extends StatefulWidget {
  const AllFieldsPage({super.key});

  @override
  State<AllFieldsPage> createState() => _AllFieldsPageState();
}

class _AllFieldsPageState extends State<AllFieldsPage> {
  String errorTxt = "";
  final formKey1 = GlobalKey<FormState>();
  String dropdownValue = listOfDropDownValues.first;
  int selectedValue = 0;
  bool productCheckbox1 = false;
  bool productCheckbox2 = true;
  bool productCheckbox3 = false;
  bool switchTest = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(
          context,
          "All Fields",
          Icons.navigate_before,
        ),
        body: buildView(),
      ),
    );
  }

  Row buildRadio(String txt, int val) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(txt),
        Radio(
          value: val,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
      ],
    );
  }

  Row buildCheckbox(String txt, Checkbox checkbox) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(txt),
        checkbox,
      ],
    );
  }

  Widget buildView() {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "TextAreaText test",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter some text";
                  } else if (value.length < 20) {
                    return "please enter valid todo task whose minimum length is 20 characters";
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                maxLines: 12,
                decoration: const InputDecoration(
                  hintText: 'holds a todo',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Radio Button tests",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              buildRadio("product1", 1),
              buildRadio("product2", 2),
              buildRadio("product3", 3),
              Text(
                errorTxt.toString(),
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Switch test"),
                  Switch(
                    value: switchTest,
                    onChanged: (value) {
                      setState(() {
                        switchTest = value;
                      });
                    },
                  ),
                ],
              ),
              const Text(
                'Checkbox test',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              buildCheckbox(
                "product 1",
                Checkbox(
                  value: productCheckbox1,
                  onChanged: (value) {
                    setState(() {
                      productCheckbox1 = value!;
                    });
                  },
                ),
              ),
              buildCheckbox(
                "product 2",
                Checkbox(
                  value: productCheckbox2,
                  onChanged: (value) {
                    setState(() {
                      productCheckbox2 = value!;
                    });
                  },
                ),
              ),
              buildCheckbox(
                "product 3",
                Checkbox(
                  value: productCheckbox3,
                  onChanged: (value) {
                    setState(() {
                      productCheckbox3 = value!;
                    });
                  },
                ),
              ),
              const Text(
                'Select test',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              DropdownButton(
                value: dropdownValue,
                items: listOfDropDownValues.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              buildButton(
                txt: "Send",
                onPressed: () {
                  if (formKey1.currentState!.validate()) {
                    print("Success");
                  }
                  setState(() {
                    if (selectedValue == 0) {
                      setState(() {
                        errorTxt = "Please select radio button";
                      });
                    } else {
                      setState(() {
                        errorTxt = "";
                      });
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
