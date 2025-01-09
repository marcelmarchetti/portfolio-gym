import 'package:flutter/material.dart';
import 'package:portfolio_marcel_gym/core/constants/navigation/routes.dart';
import 'package:portfolio_marcel_gym/core/ui/screens/auth/login.dart';

import '../../ui/screens/auth/signup.dart';

class NavigationRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch(settings.name){
      case Routes.login:
        return MaterialPageRoute(
            builder: (context) => Login());
      case Routes.signUp:
          return MaterialPageRoute(
              builder: (context) => Signup());
        /*
      case Routes.signUp:
        if(arguments is SignUpArguments) {
          return MaterialPageRoute(
              builder: (context) =>
                  Signup(
                      title = arguments.title;
                  ));
        }

         */
      default:
        return MaterialPageRoute(
            builder: (context) => Login());
    }
  }
}