import 'package:flutter/foundation.dart';

class Log {
  static void info(String message) {
    if (kDebugMode) {
      print("INFO: $message");
    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      print("WARNING: $message");
    }
  }

  static void error(String message) {
    if (kDebugMode) {
      print("ERROR: $message");
    }
  }

  static void errorWithStackTrace(Object message, StackTrace stackTrace) {
    if (kDebugMode) {
      print("ERROR: ${message.toString()}");
      print("STACKTRACE: $stackTrace");
    }
  }
}