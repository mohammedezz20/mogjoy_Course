import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key});
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // maxLength: 10,
                // maxLines: 4,
                onChanged: (value) {
                  print(value);
                },
                onSubmitted: (value) {
                  print("on submitted $value");
                },
                onTap: () {
                  print("onTap");
                },
                keyboardType: TextInputType.text,
                obscureText: false,
                obscuringCharacter: "#",
                controller: password,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.black,
                  suffix: Icon(Icons.visibility),
                  suffixIconColor: Colors.black,
                  icon: Icon(Icons.email),
                  hintText: "password",

                  hintStyle: TextStyle(fontSize: 20),

                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 3)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 3)),
                  //  enabled: false,
                  fillColor: Colors.blue,
                  filled: false,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(password.text);
                  },
                  child: const Text('print'))
            ],
          ),
        ),
      ),
    );
  }
}
