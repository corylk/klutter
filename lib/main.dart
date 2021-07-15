import 'package:flutter/material.dart';
import 'package:klutter/data/dataproviders/client/api_client.dart';
import 'package:klutter/presentation/screens/book_screen.dart';
import 'package:klutter/presentation/screens/collection_screen.dart';
import 'package:klutter/presentation/screens/library_screen.dart';
import 'package:klutter/presentation/screens/reader.dart';
import 'package:klutter/presentation/screens/series_screen.dart';
import 'package:klutter/presentation/screens/server_picker.dart';
import 'presentation/screens/server_home.dart';
import 'package:sizer/sizer.dart';

void main() {
  ApiClient();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, devicetype) {
      return MaterialApp(
        title: 'Klutter',
        theme: ThemeData.light(),
        themeMode: ThemeMode.system,
        darkTheme: ThemeData.dark(),
        home: ServerPicker(),
        routes: {
          ServerHome.routeName: (context) => ServerHome(),
          ServerPicker.routeName: (context) => ServerPicker(),
          BookScreen.routeName: (context) => BookScreen(),
          SeriesScreen.routeName: (context) => SeriesScreen(),
          Reader.routeName: (context) => Reader(),
          LibraryScreen.routeName: (context) => LibraryScreen(),
          CollectionScreen.routeName: (context) => CollectionScreen(),
        },
      );
    });
  }
}
