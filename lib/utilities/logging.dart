
import 'package:logger/logger.dart';

final log = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 2,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    printTime: false,
  ),
);
//Made Logger a bit clearer