import 'package:flutter/foundation.dart';

class Log {
  static void info(String message) {
    if (kDebugMode) {
      print('\x1B[38;5;33mINFO: $message\x1B[0m');
    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      print('\x1B[33mWARNING: $message\x1B[0m');
    }
  }

  static void error(String message) {
    if (kDebugMode) {
      print('\x1B[31mERROR: $message\x1B[0m');
    }
  }

  static void errorWithStackTrace(Object message, StackTrace stackTrace) {
    if (kDebugMode) {
      print('\x1B[31mERROR: ${message.toString()}\x1B[0m');
      print('\x1B[31mSTACKTRACE: $stackTrace\x1B[0m');
    }
  }
}