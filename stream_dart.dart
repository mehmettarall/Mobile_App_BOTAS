import 'dart:async';

main() {
  /*MyStreamFunction().listen((e) {
    print(e);
  });*/

  StreamController myStreamController = StreamController();

  void functionForStreamController() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      myStreamController.sink.add(i + 1);
    }
  }

  functionForStreamController();
}

/*tream<int> MyStreamFunction() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i + 1;
  }
}*/
