import 'package:flutter/widgets.dart';

abstract class ViewModel extends InheritedWidget {
  ViewModel({@required Widget child, Key key}) : super(child: child, key: key);

  ViewModel.withDependencies(BuildContext context,
      {@required Widget child, Key key})
      : super(child: child, key: key);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  static T of<T extends ViewModel>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<T>();
  }
}
