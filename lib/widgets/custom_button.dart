import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.color, required this.onPressed, this.isloading = false});
  final Color? color;
  final void Function()? onPressed;
  final bool isloading;
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
        onPressed: onPressed,
        child: isloading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : const Text(
                "Add",
                style: TextStyle(color: Colors.black),
              ),
      ),
    );
  }
}
