
import 'package:admin/screens/logo.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';
import 'navbar/MyNav.dart';
import 'screens/entry.dart';
import 'screens/confirm.dart';
import 'screens/confirm_reset.dart';
import 'screens/dashboard.dart';

import 'helpers/configure_amplify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureAmplify();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
    Amplify.Auth.getCurrentUser().then((user) {
      setState(() {
        _user = user;
      });
    }).catchError((error) {
      print((error as AuthException).message);
    });
  }

  Future<void> _configureAmplify() async {

    await Amplify.addPlugins([
      AmplifyAuthCognito(),
      AmplifyDataStore(modelProvider: ModelProvider.instance),
      AmplifyAPI()
    ]);

    try {
      // call Amplify.configure to use the initialized categories in your app
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }
  // This widget is the root of your application.
   final isLoggedIn = Amplify.Auth.getCurrentUser();

   final authState =  Amplify.Auth.fetchAuthSession(
   options: CognitoSessionOptions(getAWSCredentials: true)) !=null;

   late AuthUser? _user=null;

   // @override
   // void initState() {
   //   super.initState();
   //   Amplify.Auth.getCurrentUser().then((user) {
   //     setState(() {
   //       _user = user;
   //     });
   //   }).catchError((error) {
   //     print((error as AuthException).message);
   //   });
   // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amp Awesome',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //home: _user!=null?DashboardScreen():EntryScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/confirm') {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) =>
                ConfirmScreen(data: settings.arguments as LoginData),
            transitionsBuilder: (_, __, ___, child) => child,
          );
        }

        if (settings.name == '/confirm-reset') {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) =>
                ConfirmResetScreen(data: settings.arguments as LoginData),
            transitionsBuilder: (_, __, ___, child) => child,
          );
        }

        if (settings.name == '/dashboard') {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => MyNav(),
            transitionsBuilder: (_, __, ___, child) => child,
          );
        }

        return MaterialPageRoute(
            builder: (_) => _user != null ? MyNav(): EntryScreen());
      }
    );
  }
}
