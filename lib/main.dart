import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/services.dart'; //Used for settings such as landscape

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 222, 46, 11),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 99, 125),
  brightness: Brightness.dark,
);
//Brightness is needed to tell Flutter that this color scheme is used for Dark Mode.

void main() {
  // WidgetsFlutterBinding
  //     .ensureInitialized(); //Ensures that the orientation settings below are carried out.
  // SystemChrome.setPreferredOrientations(
  //   [
  //     DeviceOrientation.portraitUp,
  //   ],
  // ).then(
  //   (fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer,
          elevation: 5,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kcolorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: kcolorScheme.primaryContainer,
          backgroundColor: kcolorScheme.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kcolorScheme.primaryContainer,
          elevation: 5,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kcolorScheme.onSecondaryContainer,
            foregroundColor: kcolorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(fontWeight: FontWeight.normal),
              bodyMedium: TextStyle(
                  fontSize: 16, color: kcolorScheme.onPrimaryContainer),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
//     },
//   );
// }
}
