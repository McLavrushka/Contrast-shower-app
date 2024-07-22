import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/theme/constants.dart';
import '../models/shower_session.dart';

final sessionProvider =
    ChangeNotifierProvider<SessionNotifier>((ref) => SessionNotifier());
final stateProvider =
    ChangeNotifierProvider<StateNotifier>((ref) => StateNotifier());

final valueProvider =
    ChangeNotifierProvider<ValueNotifier>((ref) => ValueNotifier());

class SessionNotifier extends ChangeNotifier {
  List<ShowerSession> sessions = [];

  void addSession(ShowerSession session) {
    sessions.add(session);
    notifyListeners();
  }

  void editSessionRate(ShowerSession session, String rate) {
    session.rate = rate;
    notifyListeners();
  }

  void setSessions(List<ShowerSession> sessions) {
    this.sessions = sessions;
    notifyListeners();
  }
}

class StateNotifier extends ChangeNotifier {
  String state = "Initial";
  bool isHot = false;
  Color color = bgColor;
  ButtonStyle style = buttonStyle;

  void change() {
    if (state == "Hot") {
      state = "Cold";
      isHot = false;
      color = Colors.blue;
      style = buttonStyle;
    } else if (state == "Cold") {
      state = "Hot";
      isHot = true;
      color = Colors.red;
      style = blackButtonStyle;
    }
    notifyListeners();
  }

  void start() {
    state = "Hot";
    isHot = true;
    color = Colors.red;
    style = blackButtonStyle;
    notifyListeners();
  }

  void reset() {
    state = "Initial";
    isHot = true;
    color = bgColor;
    style = buttonStyle;

    notifyListeners();
  }
}

class ValueNotifier extends ChangeNotifier {
  String level = "Easy";
  int cycles = 4;
  int timeInCycle = 10;
  int cyclesLeft = 3;

  void setEasy() {
    level = "Easy";
    cycles = 4;
    timeInCycle = 10;
    cyclesLeft = 3;
    notifyListeners();
  }

  void setMedium() {
    level = "Medium";
    cycles = 6;
    timeInCycle = 40;
    cyclesLeft = 5;
    notifyListeners();
  }

  void setHard() {
    level = "Hard";

    cycles = 8;
    timeInCycle = 60;
    cyclesLeft = 7;
    notifyListeners();
  }

  void decreaseCycles() {
    cyclesLeft--;
    notifyListeners();
  }

  void reset() {
    level = "Easy";
    cycles = 4;
    timeInCycle = 10;
    cyclesLeft = 3;
  }
}
