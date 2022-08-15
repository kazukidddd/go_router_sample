// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'b',
          factory: $ScreenBRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'c',
              factory: $ScreenCRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ScreenBRouteExtension on ScreenBRoute {
  static ScreenBRoute _fromState(GoRouterState state) => const ScreenBRoute();

  String get location => GoRouteData.$location(
        '/b',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ScreenCRouteExtension on ScreenCRoute {
  static ScreenCRoute _fromState(GoRouterState state) => const ScreenCRoute();

  String get location => GoRouteData.$location(
        '/b/c',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
