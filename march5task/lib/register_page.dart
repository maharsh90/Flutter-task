import 'package:flutter/material.dart';
import 'package:march5task/widget/build_btn.dart';
import 'package:march5task/widget/build_dropbtn_formfield.dart';
import 'package:march5task/widget/build_textform_field.dart';

List<String> countries = ["India", "Usa", "Uk", "Russia"];
List<String> states = ["Gujrat", "Rajastan", "Panjab", "Maharastra"];

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

String countryDropValues = countries.first;
String stateDropValues = states.first;

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController dateController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  const Text(
                    "Register Here",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTextFormField("Name", TextInputType.text, (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter name";
                    } else if (!RegExp(r'\b[a-zA-Z]\S{2}').hasMatch(val)) {
                      return "please enter valid name";
                    }
                    return null;
                  }, TextCapitalization.words, TextInputAction.next),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTextFormField("Phone Number", TextInputType.number,
                      (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter phone number";
                    } else if (!RegExp(r'^\d{10}$').hasMatch(val)) {
                      return "please enter valid phone number";
                    }
                    return null;
                  }, TextCapitalization.none, TextInputAction.next),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTextFormField("Email", TextInputType.emailAddress,
                      (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter email";
                    } else if (!RegExp(
                            r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b',
                            caseSensitive: false)
                        .hasMatch(val)) {
                      return "please enter valid email id";
                    }
                    return null;
                  }, TextCapitalization.none, TextInputAction.next),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTextFormField("Age", TextInputType.number, (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter age";
                    } else if (!RegExp(r'^\d{2}$').hasMatch(val)) {
                      return "please enter valid age";
                    }
                    return null;
                  }, TextCapitalization.none, TextInputAction.next),
                  const SizedBox(
                    height: 10,
                  ),
                  buildTextFormField("Address", TextInputType.streetAddress,
                      (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter address";
                    }
                    return null;
                  }, TextCapitalization.none, TextInputAction.done),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: dateController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter DOB";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.datetime,
                    readOnly: true,
                    onTap: () {
                      setState(() {
                        selectDate();
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'DOB',
                      hintText: "dd/MM/yyyy",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildDropBtnFormField(
                    lstOf: countries,
                    values: countryDropValues,
                    lblTxt: "Please select countries",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please select Countries";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildDropBtnFormField(
                    lstOf: states,
                    values: stateDropValues,
                    lblTxt: "please select states",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please select States";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildBtn(() {
                    if (formKey.currentState!.validate()) {
                      print("Success");
                    }
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> selectDate() async {
    DateTime? picked = await showDatePicker(
        initialDate: DateTime.now(),
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (picked != null) {
      setState(() {
        dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
