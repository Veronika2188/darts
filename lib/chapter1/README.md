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

12. Dynamic allows the developer to assign values to one variable completely different data types, if necessary.

13. Dynamic vs Object

14. Final is used when you need variables that cannot be reassigned but can be computed at runtime. Const is used for values that might be computed at compile time; const is immutable.

15. final vs late

In Dart, we use the late keyword to declare variables that will be initialized later. These are called non-nullable variables as they are initialized after the declaration. Hence, we use the late keyword.

    | class Person {
    | late String name;
    | }
    | 
    | void main() {
    |     Person person = Person();
    |     person.name = "Maria Elijah";
    | 
    |     print(person.name);
    | }

16. With null safety, all types default to non-nullable. For example, if you have a variable of type String, it always contains a string.

To allow a variable of type String to accept any string or the value null, add a question mark (?) after the type name. This changes the type of variable to a nullable type. For example, a variable of type String? can contain a string, or it can be null.

If you're sure an expression with a nullable type doesn't equal null, you can use the non-null assertion operator (!) to make Dart treat it as non-nullable. By adding ! after the expression, you assert two conditions to Dart about the expression: its value doesn't equal null; Dart can assign the value to a non-nullable variable.


17. There are 2 types of comments: single-line and multi-line. Single-line comments are written with the // symbol. Multi-line comments are written with the /* and */ symbols.

18. The rules of declaration of variables, functions, classes and methods in Dart are as follows:

- for variables,  functions  and  methods  names  are  written  in camelCase; for classes names are written in UpperCamelCase;
- it's  not  allowed  to  use  number values  at the  beginning  of  the  name;
- Register of characters in Dart is case sensitive; for example, var CHECK = 10; and var check = 10; are different variables;
- it's  not  allowed  to  use  Dart  reserved  words  as  names;
- if the name starts with '_' then it's a private name.


