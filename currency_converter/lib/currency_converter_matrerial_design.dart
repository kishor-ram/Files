import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color.fromARGB(234, 255, 179, 72),
            width: 2.0,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(15));

    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(24, 228, 255, 1),
          elevation: 0,
          title: const Text('Currency Converter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 85, 85, 85),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 117, 117, 117)),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: const Color.fromARGB(255, 117, 117, 117),
                    filled: true,
                    fillColor: Color.fromARGB(77, 255, 255, 255),
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                      decimal: true, signed: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      result = double.parse(textEditingController.text)*81;
                    },
                    style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 89, 232, 232)),
                        foregroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                        minimumSize: const WidgetStatePropertyAll(
                            Size(double.infinity, 50)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    child: const Text(
                      'Convert',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    )),
              )
            ],
          ),
        ));
  }
}
