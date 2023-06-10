import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {}

  @override
  void onChange(BlocBase bloc, Change change) {
    print('change => $change');
  }

  @override
  void onClose(BlocBase bloc) {
    print('onClose => $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('onCreate => $bloc');

  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}
}
