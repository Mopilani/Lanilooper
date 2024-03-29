// import 'dart:convert';
// import 'dart:io';

// class Prolani {
//   /*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\
//   | Prolani String Encoder StrE
//   | Prolani String Decoder StrD
//   | Prolani file encoder FileD
//   | The encoder depending on file name so file name must be changed
//   |  or will not de compiled then
//   \___________________________________________________________________________*/

//   /*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\
//   |                         Prolani Sring Encoder                           |
//   \________________________________________________________________________*/
//   /// Example StrD('Hello World', 'hello_file') // => '123345 2353 345 356 2445'
//   String StrE(string, fileName) {
//     /// code units
//     var cu = 0;

//     /// pluring code units
//     for (var i in fileName.codeUnits) {
//       cu = cu + i;
//     }

//     /// encoded String
//     var encodedd = '';

//     /// String Encoder
//     for (var i = 0; i < string.length; i++) {
//       /// [Note] the final space is important
//       encodedd = encodedd + ('${string.codeUnitAt(i) + cu} ');
//     }
//     return encodedd;
//   }

//   /*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\
//   |                         Prolani Sring Decoder [StrD]                    |
//   \________________________________________________________________________*/
//   /// Example StrD('2123 4556 42334 4765 234 34532 34532 2345', 'hello_file') // => 'Hello World'
//   String StrD(intstring, fileName) {
//     /// code units
//     var cu = 0;

//     /// pluring code units
//     for (var i in fileName.codeUnits) {
//       cu = cu + i;
//     }

//     /// encoded String
//     var decoded = '';
//     var collectednum = '';
//     var collectednums = <int>[];

//     /// String Decoder
//     /// line loop
//     for (var i = 0; i < intstring.length; i++) {
//       var lii = intstring[i];
//       if (lii == ' ') {
//         collectednums.add(atoIntParse(collectednum) - cu);
//         collectednum = '';
//       } else {
//         collectednum = collectednum + lii;
//       }
//     }

//     /// try to convert utf8 list to catch errs
//     try {
//       decoded = utf8.decoder.convert(collectednums);
//     } catch (e) {
//       rethrow;
//     }
//     return decoded;
//   }

//   /*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\
//   |                         Prolani File Decoder                            |
//   \________________________________________________________________________*/
//   /// Example StrD('hello_file') // => 'Hello World'
//   Future<String> FileD(String fileName, filePath) async {
//     // code units
//     var cu = 0;

//     /// pluring code units
//     for (var i in fileName.codeUnits) {
//       cu = cu + i;
//     }
//     // current directory path
//     var cpd = Directory.current.path;
//     // all fileName
//     var file = File('$cpd/$filePath');
//     var decodeResult = file.exists().then((value) async {
//       var result = '';
//       if (value) {
//         await file.readAsLines().then((_linsList) {
//           // collecting numbers in on line cycle
//           var collectednums = <int>[];

//           /// lines loop
//           for (var _line = 0; _line < _linsList.length; _line++) {
//             var newResult = '';
//             var _string = _linsList[_line];
//             var collectednum = '';

//             /// line loop
//             for (var i = 0; i < _string.length; i++) {
//               var lii = _string[i];
//               if (lii == ' ') {
//                 collectednums.add(atoIntParse(collectednum) - cu);

//                 collectednum = '';
//               } else {
//                 collectednum = collectednum + lii;
//               }
//             }
//             result = result + newResult;
//           }

//           /// try to convert utf8 list to catch errs
//           try {
//             result = utf8.decoder.convert(collectednums);
//           } catch (e) {
//             rethrow;
//           }
//         });
//       } else {
//         throw 'file Not exist';
//       }
//       return result;
//     });
//     return decodeResult;
//   }
// }

// int atoIntParse(String string) {
//   /*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\
//   |                         Prolani Sring Decoder                           |
//   \________________________________________________________________________*/
//   /// Example StrD('123456789', 'hello_file') // => 123456789
//   dynamic result = 0;
//   var newString = '';
//   var fres;
//   if (string.length < 10) {
//     for (var i = 0; i < string.length; i++) {
//       newString = string[i] + newString;
//     }

//     for (var i = 0; i < newString.length; i++) {
//       var number = newString[i] == '1'
//           ? pr(1, (i + 0))
//           : newString[i] == '2'
//               ? pr(2, (i + 0))
//               : newString[i] == '3'
//                   ? pr(3, (i + 0))
//                   : newString[i] == '4'
//                       ? pr(4, (i + 0))
//                       : newString[i] == '5'
//                           ? pr(5, (i + 0))
//                           : newString[i] == '6'
//                               ? pr(6, (i + 0))
//                               : newString[i] == '7'
//                                   ? pr(7, (i + 0))
//                                   : newString[i] == '8'
//                                       ? pr(8, (i + 0))
//                                       : newString[i] == '9'
//                                           ? pr(9, (i + 0))
//                                           : newString[i] == '0'
//                                               ? pr(0, (i + 0))
//                                               : 0;
//       result = result + number;
//     }
//     fres = result;
//   }
//   return fres ?? 000;
// }

// int pr(int n, p) {
//   var _result;
//   _result = p == 0
//       ? n
//       : p == 1
//           ? (10 * n)
//           : p == 2
//               ? (100 * n)
//               : p == 3
//                   ? (1000 * n)
//                   : p == 4
//                       ? (10000 * n)
//                       : p == 5
//                           ? (100000 * n)
//                           : p == 6
//                               ? (1000000 * n)
//                               : p == 7
//                                   ? (10000000 * n)
//                                   : p == 8
//                                       ? (100000000 * n)
//                                       : p == 9
//                                           ? (1000000000 * n)
//                                           : 0;
//   return _result;
// }
