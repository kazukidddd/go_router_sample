import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screena.dart';
import 'package:go_router_sample/screenb.dart';
import 'package:go_router_sample/screenc.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const ScreenA();
        },
        routes: <GoRoute>[
          GoRoute(
            path: 'b',
            builder: (BuildContext context, GoRouterState state) {
              return const ScreenB();
            },
            routes: <GoRoute>[
              GoRoute(
                path: 'c',
                builder: (BuildContext context, GoRouterState state) {
                  return const ScreenC();
                },
              )
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'GoRouter Example',
    );
  }
}
