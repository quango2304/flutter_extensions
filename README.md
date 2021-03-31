# flutter_extensions

A set of useful extensions on FLutter

### A set of extensions on Flutter and Dart type
#### Include: context, dateTime, int, string, list, iterable, map, object, widget

## int
Duration get seconds

Duration get milliseconds

Duration get hours

Duration get minutes

void toMinutesDelay(Function computation)

void toSecondsDelay(Function computation)

void toMillisecondsDelay(Function computation)

```
     5.toSecondsDelay(() {
        print("after 5 sec");
     });
```

## String
String get reverse

List<String> get toList

List<String> splitWithDelimiter(String delimiter)

String truncateWithEllipsis(int cutoff)

String get capitalize

String withCounter(int number)

double toDouble([double defaultValue = 0.0])

int get toInt

## Object
to avoid cast exception

int get castToInt

double get castToDouble

String get castToString

bool get castToBool

bool get castToList

bool get castToMap

bool get isNull

bool get isNotNull

bool get isNullOrEmpty

bool get isNullEmptyOrFalse

bool get isNullEmptyFalseOrZero

## Widget

Widget paddingAll(double padding) 

Widget paddingHorizontal(double padding)

...

Widget paddingRight(double padding)

## DateTime

bool isBetween({DateTime startAt, DateTime endAt})

bool get isToday

bool get isPassed

## Iterable

Iterable<T> mapIndexed<T>(T Function(E e, int i) f)

## List

List<E> get clone 

bool replace(E element, E replacement)

bool replaceWhere(Function(E e) getCondition, E replacement)

List<E> removeNull()

List<E> removeDuplicated()

List<E> removeDuplicatedBy(Function(E e) getCondition) 

E safeGet(int index)

bool compare(List listB)

bool compareBy(List<E> listB, Function(E e) getCondition)

 int countItem(E item)
 
 num maxElement()
 
 num minElement()
 
## Map

Map<dynamic, dynamic> get reverse 

bool getBool(String key)

int getInt(String key)

double getDouble(String key)

String getString(String key)

List<T> getList<T>(String key)

## Context
has extensions for some types below

MediaQueryExt

NavigatorExt

ThemeExt

ScaffoldExt