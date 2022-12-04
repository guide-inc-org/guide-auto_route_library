import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';

import '../test_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    PageInfo(path: '/first', page: FirstPage, initial: true),
    PageInfo(
        path: '/second',
        name: 'SecondRoute',
        page: EmptyRouterPage,
        children: [
          PageInfo(path: 'nested1', page: SecondNested1Page, initial: true),
          PageInfo(path: 'nested2', page: SecondNested2Page),
        ]),
  ],
)
class AppRouter extends _$AppRouter {}

class SecondNested1Page extends TestPage {
  const SecondNested1Page({Key? key}) : super(key: key);
}

class SecondNested2Page extends TestPage {
  const SecondNested2Page({Key? key}) : super(key: key);
}
