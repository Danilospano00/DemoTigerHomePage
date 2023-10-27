import 'package:flutter/material.dart';

/// This mixin is used to avoid boilerplate when a dialog should be showed
mixin Showable on Widget {
  Future<T?> show<T>(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      builder: (_) => this,
    );
  }
}
