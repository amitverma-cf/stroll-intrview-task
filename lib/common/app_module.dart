import 'package:flutter_modular/flutter_modular.dart';
import 'package:interview_ui/core/home/home_page.dart';
import './not_found_page.dart';
import './route_names.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(RouteName.slash, child: (context) => const HomePage());
    r.wildcard(child: (context) => const NotFoundPage());
  }
}
