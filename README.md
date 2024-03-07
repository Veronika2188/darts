# Dart learning

2024-02-11

Today I figured out how the structure of a simple (or maybe not so simple) app looks from the inside. It contains a lot of little parts that go to a one bunch of dependencies. We talked a lot about OOP and the simplicity of Haskell in comparison with other programming languages' overwhelming syntax. We discussed null safety (nullable and non-nullable, adding ? or ! to indicate nullability or non-nullability, null-checking).

2024-02-12

Today I started to read the DartBook. Currently I read the first chapter about built-in types in dart. I've read about number types (int, double), strings and methods of work with them, bool, lists and how to work with them, and now I'm reading about Records.

2024-02-13

Today I've read the first chapter and wrote summary, using following questions. I still have questions about Final & Late, Dynamic & Object, that question about the most appropriate data type (seems like I've understood it now, don't need to ask anymore, 'll do it tomorrow morning on my own). I need to finish the question about null-safety.

2024-02-15

Today I started to do tasks with strings. I want to go quickly through the tasks with lists, maps and sets and start the second chapter about operators, pattern matching and control structures.

2024-02-18

Today I learned about pattern-matching and destructing. Destructing is a way to extract data from an object.
A pattern always tests against a value to determine if the value has the form you expect. In other words, you are checking if the value matches the pattern. When an object and pattern match, the pattern can then access the object's data and extract it in parts. In other words, the pattern destructures the object.

2024-02-20

Today I started to read the third chapter, that is about functions, libraries and testing. The author starts the chapter with talking about abstractions in general and considering what it means. Then he goes talking about what every programming language consists of...

2024-02-22

...and the he eventually goes to functions. He talks about what functions are by themselves, about how to declare them and how to use them, then he talks about declaring entering arguments of a function. There are the next types of arguments: positional; named(wrapped in {}); optional(wrapped in []) and combinations of these.

Then he talks about a call to a function through the variable, and then about a function itself like an argument of another function.

Further in the chapter he introduces a type alias (often called a typedef because it's declared with the keyword typedef), that is is a concise way to refer to a type.

Then starts the paragraph about the lambda functions and the arrow functions.

2024-02-24

We talked about closures, and in case of this theme we discussed lambda functions and how they appeared, the levels of ierarchy, OOP and Functional Programming. It all started with a joke about the closure being an object for poor people and then it became a real topic.

2024-02-25

Today we discussed closures (and examples of using them)and recursion, and then we watched a video about the lazy evaluation (it called "I programmed in TypeScript like in Haskell").

Then I started to read about generators and at the moment I came across the sync and async generator function I understood that I should pay more attention to it when I reach the sixth chapter about async programming.

2024-03-07

Today I started to read about libraries and packages in dart and I asked myself what actually are libraries, packages and frameworks and what is the difference between them. That's what I found out.

Packages

Packages are a collection of modules and associated files that form a unit or a group. Any app written in Dart might be considered as a package. Packages are useful for distributing and installing large applications and libraries. A package bundles the necessary files and components to execute a function, making it easier to install and manage them.

For example, Pygame is a Python package used for building games. Java EE is a set of APIs for developing enterprise applications in Java. JavaServer Faces (JSF) is a UI framework for web apps in Java, and JavaFX is a package for building rich client apps in Java.

The advantages of using packages include increased functionality, faster development times, and the ability to solve specific problems quickly. However, packages can also be limiting and may not provide the flexibility needed for more complex projects.

Libraries

Libraries are collections of code that are pre-written and can be reused in different programming contexts. These libraries provide developers with efficient, reusable code, making it simpler and faster to create applications. Libraries are especially helpful for tasks that require complicated math, complicated graphics, and other computationally-intensive tasks. The advantages of using libraries include faster development times, increased productivity, and the ability to solve common problems quickly. However, libraries can also be limiting and may not provide the flexibility needed for more complex projects.

Dart provides several libraries that are pre-written and can be reused in different programming contexts by importing them:

− dart:core. This library allows you to use built-in types, collections and other functions.
− dart:async. Uses asynchronous programming.
− dart:math. Allows you to use math functions, constants and other mathematical tools, random generator.
− dart:convert. Uses encoding and decoding.
− dart:html. Allows you to work with the HTML DOM (Document Object Model).
− dart:io. Allows you to use input and output and work with files, directories, sockets, processes, and more.
− dart:collection. Contains classes and utilities, extending dart:core.
− dart:typed_data. Provides classes and utilities for working with fixed-size data (e.g. integers of size. 8 bytes without sign) and numeric SIMD types.
− dart:developer. Allows you to work with the developer tools for debugging and profiling. It has Dart Web and Dart Native support.
etc.

Frameworks

Frameworks are a set of classes, interfaces, and tools used to create software applications. They usually contain code that handles low-level programming and offers an easy-to-use framework for developers. Frameworks promote consistency by providing a structure in which to develop applications. This structure can also be used as a guide for customizing the activity of coding and adding features.

Examples of frameworks include .NET, React, Angular, and Ruby on Rails. The advantages of using frameworks include faster development times, easier maintenance, and a consistent structure across projects. However, frameworks can also be restrictive and may not be suitable for all projects.
