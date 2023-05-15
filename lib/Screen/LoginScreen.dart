import 'package:flutter/material.dart';
import 'Dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://i.postimg.cc/tRrTDfWB/download-1.png"),
            const Text(
              "Admine Pyanel",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Email or Phone',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, fixedSize: Size(1600, 50)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                child: Text(
                  "Log in",
                  style: Head2Text(Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}

// ButtonStyle
ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.zero,
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)));
}



// TextStyle
TextStyle Head1Text(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 27,
    fontWeight: FontWeight.w700,
  );
}

TextStyle Head2Text(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}
