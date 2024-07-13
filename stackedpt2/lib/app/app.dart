import 'package:stacked/stacked_annotations.dart';
import 'package:stackedpt2/services/counter_service.dart';

@StackedApp(
  routes: [],
  dependencies: [
    Singleton(classType: CounterService),
  ],
)
class App {}
