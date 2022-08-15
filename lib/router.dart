import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screena.dart';
import 'package:go_router_sample/screenb.dart';
import 'package:go_router_sample/screenc.dart';

part 'router.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ScreenBRoute>(
      path: 'b',
      routes: [
        TypedGoRoute<ScreenCRoute>(
          path: 'c',
        ),
      ],
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const ScreenA();
}

class ScreenBRoute extends GoRouteData {
  const ScreenBRoute();

  @override
  Widget build(BuildContext context) => const ScreenB();
}

class ScreenCRoute extends GoRouteData {
  const ScreenCRoute();

  @override
  Widget build(BuildContext context) => const ScreenC();
}
