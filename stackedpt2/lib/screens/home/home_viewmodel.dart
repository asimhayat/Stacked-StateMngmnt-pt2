import 'package:stacked/stacked.dart';
import 'package:stackedpt2/app/app.locator.dart';
import 'package:stackedpt2/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  CounterService counterService = locator<CounterService>();
  int get counter => counterService.counter;

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
