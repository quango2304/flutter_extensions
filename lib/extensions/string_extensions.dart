import 'package:flutter/material.dart';
import 'regex_extensions.dart';

extension StringExtensions on String {
  String get reverse {
    if (this.length < 2) {
      return this;
    }
    final characters = Characters(this);
    return characters.toList().reversed.join();
  }

  List<String> get toList {
    return Characters(this).toList();
  }

  //'hi i am Leo i'm so handsome'.splitWithDelimiter('Leo')
  // will return ['hi i am ','Leo',' i'm so handsome']
  List<String> splitWithDelimiter(String delimiter) =>
      RegExp(delimiter).allMatchesWithSep(this);

  //'012345678'.truncateWithEllipsis(5)
  // will return '01234...'
  String truncateWithEllipsis(int cutoff) {
    return (length <= cutoff) ? this : '${substring(0, cutoff)}...';
  }

  String get capitalize {
    return (this?.isNotEmpty ?? false)
        ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}'
        : this;
  }

  // 'sad'.withCounter(5)
  // will return sad(5)
  String withCounter(int number) {
    return (isNotEmpty ?? false) ? '$this($number)' : this;
  }

  double toDouble([double defaultValue = 0.0]) {
    return double.tryParse(replaceAll(RegExp(r'[^0-9\.]'), '')) ?? defaultValue;
  }

  int get toInt {
    return int.tryParse(this);
  }
}
