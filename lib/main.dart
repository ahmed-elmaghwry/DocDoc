import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_doc_app.dart';

// /
//   */*/*/*/*/*/*/*//*/*/*/*/**/*/*/*/**/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*
void main() {
  /// TODO : dependency injection
  setupGetIt();
  /// TODO : Run App
  runApp(DocDocApp(
    /// TODO : Route App manager
    appRouter: AppRouter(),
  ));
}
