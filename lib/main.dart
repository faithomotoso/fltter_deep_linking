import 'package:flttr_deep_linking/deep_page.dart';
import 'package:flttr_deep_linking/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

GoRouter _router = GoRouter(routes: [
  GoRoute(path: "/", builder: (ctx, state) => MyHomePage(), routes: [
    GoRoute(path: "deep", builder: (ctx, state) => IosDeepPage()),
    GoRoute(path: "registration", builder: (ctx, state) {
      Map<String, String> params = state.queryParams;
      return RegistrationPage(
        email: params["email"],
        firstName: params["fname"],
        lastName: params["lname"],
      );
    })
  ]),
  // GoRoute(path: "/ios-no-home", builder: (ctx, state) => IosDeepPage())
], debugLogDiagnostics: true);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deep Linkin'"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home page stays here',
            ),
            TextButton(
                onPressed: () {
                  context.go("/deep");
                },
                child: Text("To deep page")),
          ],
        ),
      ),
    );
  }
}
