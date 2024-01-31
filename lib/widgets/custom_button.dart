import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: double.infinity,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 20),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Add",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
