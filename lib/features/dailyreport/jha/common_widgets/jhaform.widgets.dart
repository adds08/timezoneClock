// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TablePaddedCell extends StatelessWidget {
  final Widget child;
  const TablePaddedCell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: child,
    );
  }
}

class UrbanJHATextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Icon? icon;
  final VoidCallback? onPressed;
  final Widget? suffixIcon;
  final int? maxLines;
  const UrbanJHATextFormField({
    Key? key,
    required this.controller,
    this.hintText,
    this.icon,
    this.onPressed,
    this.suffixIcon,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 32),
      child: TextFormField(
        onTap: onPressed,
        controller: controller,
        maxLines: maxLines,
        style: const TextStyle(
          fontSize: 12,
        ),
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            isDense: true,
            filled: true,
            border: InputBorder.none,
            fillColor: Colors.grey.shade200,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusColor: Colors.pink),
      ),
    );
  }
}

class UrbanJHAText extends StatelessWidget {
  final String text;
  const UrbanJHAText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.w800),
    );
  }
}
