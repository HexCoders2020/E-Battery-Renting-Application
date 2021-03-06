import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sihproject/location_fetching_screen.dart';
import 'package:sihproject/models/saved_info.dart';


void main() {
  ///a familiar function from where execution starts
  ///this calls a function (runApp) which calls the MyApp class constructor
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => runApp(MyApp()));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// i have used provider package by flutter team to manage state
    return ChangeNotifierProvider(
      create: (context) => SavedInfo(),/// SavedInfo is the class which listens to every change in its
      /// variables and notifies to every Listener
      child: MaterialApp(       /// this is what every part of our app is wrapped under(self explanatory)
        home: LocationFetchingScreen(), /// this takes user to the new screen as the name suggests
      ),
    );
  }
}


