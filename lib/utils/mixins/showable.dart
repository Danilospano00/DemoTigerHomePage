import 'package:flutter/material.dart';

/// This mixin is used to avoid boilerplate when a dialog should be showed
///
/// How to use it:
/// e.g. const DeleteFeatureDialog().show(context)
///
/// Without this method we should call the showDialog method in this way:
///
///  showDialog(
///   context: context,
///   builder: (BuildContext context) => const DeleteFeatureDialog(),
///  );

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
