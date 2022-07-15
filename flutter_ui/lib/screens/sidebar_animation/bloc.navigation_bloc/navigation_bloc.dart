import 'package:bloc/bloc.dart';
import 'package:my_ui/screens/sidebar_animation/pages/homepage.dart';
import 'package:my_ui/screens/sidebar_animation/pages/myaccountpage.dart';
import 'package:my_ui/screens/sidebar_animation/pages/myorderpage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrderPage();
        break;
    }
  }
}
