/* Write a Dart program to check if a character exists in a string. 
Output should contain the index of the last occurrence of the character.*/

import 'dart:io';

import 'package:string_validator/string_validator.dart';

void main() {
  String str = "hello world";

  print("Enter the character to check: ");
  String? characterToCheck = stdin.readLineSync();

  // bool isLetter() {
  //   List letters = [
  //     "a",
  //     "b",
  //     "c",
  //     "d",
  //     "e",
  //     "f",
  //     "g",
  //     "h",
  //     "i",
  //     "j",
  //     "k",
  //     "l",
  //     "m",
  //     "n",
  //     "o",
  //     "p",
  //     "q",
  //     "r",
  //     "s",
  //     "t",
  //     "u",
  //     "v",
  //     "w",
  //     "x",
  //     "y",
  //     "z"
  //   ];
  //   return letters.contains(characterToCheck);
  // }

  if (characterToCheck != null) {
    if (isAlpha(characterToCheck)) {
      if (str.contains(characterToCheck)) {
        print(
            "The character $characterToCheck exists in the string. Last index of $characterToCheck is ${str.lastIndexOf(characterToCheck)}."); //ask about interpolation
      } else {
        print(
            "The character $characterToCheck does not exist in the string '$str'.");
      }
    } else {
      print("Please, enter a letter.");
    }

    // if (str.contains(characterToCheck)) {
    //   print(
    //       "The character $characterToCheck exists in the string. Last index of $characterToCheck is ${str.lastIndexOf(characterToCheck)}."); //ask about interpolation
    // } else if (letters.contains(characterToCheck)) {
    //   print(
    //       "The character $characterToCheck does not exist in the string '$str'.");
    // } else {
    //   print("Please, enter a letter.");
    // }
  }
}
