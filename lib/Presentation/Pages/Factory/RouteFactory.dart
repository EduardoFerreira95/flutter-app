import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class PageList {
  String? name;
  late Widget widget;
  Bindings? binding;
  PageList(this.name, this.widget, this.binding);
}
class RouteFactory {
  List<GetPage> makeRoutes(List<PageList> pagesList) {
    return pagesList.map((page) => GetPage(name: page.name.toString(), page: () => page.widget, binding: page.binding)).toList();
  }
}

final routeFactory = RouteFactory();