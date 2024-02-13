# Chapter 1 Summary

1. Dart was positioned as a language developed to replace JavaScript.
2. Dart compiler uses 2 platforms: native and web.
3. Dart is an object-oriented, class-based language with C-style syntax.

4. Built-in types:  Numbers (int, double)
                    Strings (String)
                    Booleans (bool)
                    Records ((value1, value2))
                    Lists (List, also known as arrays)
                    Sets (Set)
                    Maps (Map)
                    Runes (Runes; often replaced by the characters API)
                    Symbols (Symbol)
                    The value null (Null)

5. Both int and double are subtypes of num. The num type includes basic operators such as +, -, /, and *, and also abs(), ceil(), and floor(), among other methods.

6. Differences between string & []rune:
String value is a read-only byte slice. And, a string literal is encoded in utf-8. Each char in string actually takes 1 ~ 3 bytes, while each rune takes 4 bytes. For string, both len() and index are based on bytes. For []rune, both len() and index are based on rune (or int32).
When you convert from string to []rune, each utf-8 char in that string becomes a rune.
Similarly, in the reverse conversion, when converting from []rune to string, each rune becomes a utf-8 char in the string.
7. String is immutable type, you can't change it in the direct way.

    | String someString = 'Hello World';
    | someString[0]  =  'G'; // error
    | String someChangedString = 'G' + s1.substring(1); // correct way

8. Array is an ordered group of objects. In Dart, arrays are List objects, so most people just call them lists. Dart list literals are denoted by a comma separated list of expressions or values, enclosed in square brackets ([]). You can get a list's length using the .length property and access a list's values using the subscript operator ([])

9. The Tuple is an ordered collection of positional elements (fields) of different types, while in the Record they are not ordered and can be named. The element cannot be accessed by index, only by the getter method.

    | var myRecord = (10, '-_-'); // или (int, String) myRecord = (10, '-_-');
    | print(myRecord); // (10, -_-)
    |
    | print(myRecord.$1); // 10
    | print(myRecord.$2); // -_-

Named fields:

    | var myRecord = (cost: 10, smile: '-_-'); 
    | // or ({int cost, String smile}) myRecord = (cost: 10,  smile: '-_-'); 
    | print(myRecord); // (cost: 10, smile: -_-)
    |
    | print(myRecord.cost); // 10 
    | print(myRecord.smile); // -_- 

10. A set in Dart is an unordered collection of unique items. They are often used for two purposes: removal of duplicates and verification of ownership.

    | var mySet = <int>{1, 2, 5, 5, 5, 6, 7, 8};
    | // Set<int> mySet = {1, 2, 5, 5, 5, 6, 7, 8};
    |
    | // Set<int> mySet = {};
    | // var mySet = <int>{};

    Dart maintains three mathematic operations with sets:
    − union;
    − difference;
    − intersection.

    | var mySetA = <int>{1, 2, 5, 6, 7, 8};
    | var mySetB = <int>{20, 22, 5, 6, 73, 88, 25};
    |
    | print(mySetA.union(mySetB));
    |
    | // {1, 2, 5, 6, 7, 8, 20, 22, 73, 88, 25} union
    |
    | print(mySetA.difference(mySetB)); // {1, 2, 7, 8} А-В
    | print(mySetB.difference(mySetA)); // {20, 22, 73, 88, 25} В-А
    |
    | print(mySetA.intersection(mySetB)); //{5, 6} intersection A and В

11. Map is an object that connects keys and values. Both keys and values can be objects of any data type. The key is unique, the value can be used many times and be connected with different keys. ap consists of couples «key:value» (MapEntry <K, V>).

    | var myMap = <String, String>{
    |     'first': 'Hello',
    |     'second': 'dear',
    |     'fifth': 'world'
    | };
    | print(myMap); // {first: Hello, second: dear, fifth: world}

    | List<int> keys = [1, 2, 3, 4, 5];
    | List<String> values = ['one', 'two', 'three', 'four', 'five'];
    |
    | var myMap = Map<int, String>.fromIterables(keys, values);
    | print(myMap); // {1: one, 2: two, 3: three, 4: four, 5: five}


    | // amount of elements
    | print(myMap.length); // 6
    |
    | // List of keys
    | print(myMap.keys.toList()); // [1, 2, 3, 4, 5, 6]
    |
    | // List of values
    | print(myMap.values.toList()); // [a, b, c, d, e, f]
    |
    | print(myMap.isEmpty); // false
    | print(myMap.isNotEmpty); // true

    | // Remove «key:value»
    | myMap.remove(1); // 1 is key
    |
    | // clear all
    | myMap.clear();

    | myMap.update(
    |     3, // key
    |     (value) => 'k', // new value
    | );

14. Final is used when you need variables that cannot be reassigned but can be computed at runtime. Const is used for values that might be computed at compile time; const is immutable.
