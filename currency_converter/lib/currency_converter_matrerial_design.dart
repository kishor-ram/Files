import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.white, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(15));
    return Scaffold(
        backgroundColor: Color.fromRGBO(50, 151, 52, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '0',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please emter the amount in USD',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.white,
                    filled: true,
                    fillColor: Colors.white30,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                      decimal: true, signed: true),
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Button Clicked');
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.tealAccent),
                    foregroundColor: MaterialStatePropertyAll(Colors.white12)

                  ),
                  child: const Text('Convert'))
            ],
          ),
        ));
  }
}
