import 'dart:collection';
import 'object_extensions.dart';

const bool defaultBool = false;
const int defaultInt = 0;
const double defaultDouble = 0;
const String defaultString = '';


extension MapExtension on Map<dynamic, dynamic> {
  Map<dynamic, dynamic> get reverse {
    return LinkedHashMap.fromEntries(entries.toList().reversed);
  }

  /// Reads a [key] value of [bool] type from [Map].
  ///
  /// If value/map is NULL or not [bool] type return default value [defaultBool]
  ///
  bool getBool(String key) {
    Map data = this;
    if (data == null) {
      data = {};
    }
    if (data.containsKey(key)) if (data[key] is bool) return this[key] ?? defaultBool;
    print("Map.getBool[$key] has incorrect data : $this");
    return defaultBool;
  }

  /// Reads a [key] value of [int] type from [Map].
  ///
  /// If value/map  is NULL or not [int] type return default value [defaultInt]
  ///
  int getInt(String key) {
    Map data = this;
    if (data == null) {
      data = {};
    }
    if (data.containsKey(key)) return data[key].castToInt;
    print("Map.getInt[$key] has incorrect data : $this");
    return defaultInt;
  }

  /// Reads a [key] value of [double] type from [Map].
  ///
  /// If value/map  is NULL or not [double] type return default value [defaultDouble]
  ///
  double getDouble(String key) {
    Map data = this;
    if (data == null) {
      data = {};
    }
    if (data.containsKey(key)) return data[key].castToDouble;
    print("Map.getDouble[$key] has incorrect data : $this");
    return defaultDouble;
  }

  /// Reads a [key] value of [String] type from [Map].
  ///
  /// If value/map  is NULL or not [String] type return default value [defaultString]
  ///.
  String getString(String key) {
    Map data = this;
    if (data == null) {
      data = {};
    }
    if (data.containsKey(key)) if (data[key] is String) return data[key] ?? defaultString;
    print("Map.getString[$key] has incorrect data : $this");
    return defaultString;
  }

  /// Reads a [key] value of [List] type from [Map].
  ///
  /// If value/map  is NULL or not [List] type return default value [defaultString]
  ///
  List<T> getList<T>(String key) {
    Map data = this;
    if (data == null) {
      data = {};
    }
    if (data.containsKey(key)) if (data[key] is List<T>) return data[key] ?? <T>[];
    print("Map.getString[$key] has incorrect data : $this");

    return <T>[];
  }
}